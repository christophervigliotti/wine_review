class WinesController < ApplicationController

  before_action :set_wine, only: [ :show, :edit, :update, :destroy ]

  def index
    @available_at = Time.now
    @wines = Wine.all
  end

  def show
    # replaced by the before_action @wine = Wine.find(params[:id])
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.new(wine_params)
    @wine.save
    redirect_to @wine
  end

  def edit
    # replaced by the before_action @wine = Wine.find(params[:id])
  end

  def update
    # replaced by the before_action @wine = Wine.find(params[:id])
    @wine.update(wine_params)
    redirect_to @wine
  end

  def destroy
    # replaced by the before_action @wine = Wine.find(params[:id])
    @wine.destroy
    redirect_to wines_url
  end

  private

  def set_wine
    @wine = Wine.find(params[:id])
  end

  def wine_params
    params.require(:wine).permit(:name, :year, :winery, :country, :varietal)
  end  
  
end