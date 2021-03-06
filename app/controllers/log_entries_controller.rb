class LogEntriesController < ApplicationController

  # must list log entries
  # must allow creation of new log entries

  before_action :set_wine

  def index
    @log_entries = @wine.log_entries.order('created_at desc')
  end

  def new
    @log_entry = @wine.log_entries.new
  end

  def create
    @log_entry = @wine.log_entries.new(log_entry_params)
    if @log_entry.save
      redirect_to wine_log_entries_path(@wine), notice: 'Log entry saved!'
    else
      render :new
    end
  end

  private

  def log_entry_params
    params.require(:log_entry).permit(:name, :rating, :location, :comments, :tasted_on)
  end

  def set_wine
    @wine = Wine.find(params[:wine_id])
  end

end
