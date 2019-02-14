class CocktailsController < ApplicationController
  # Get /cocktails
  def index
    @cocktails = Cocktail.all
  end

  # GET /cocktails/1
  def show
    @cocktail = Cocktail.find(params[:id])
  end
end
