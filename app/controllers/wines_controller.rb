class WinesController < ApplicationController
  def index
    @wine = Wine.all
  end
  def show
    @book = Book.find(params[:id])
  end
end
