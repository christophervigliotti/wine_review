=begin
WinesController
must have index, show, new, create, edit, and update methods
the actions must work with Wine objects from the database
=end
class WinesController < ApplicationController
  def index
    @wines = Wine.all
  end
  def show
    @wine = Wine.find(params[:id])
  end
end