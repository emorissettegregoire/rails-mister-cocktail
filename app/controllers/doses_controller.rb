class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktails = Cocktail.find(params[:cocktail_id]) # get cocktail object from DB

    @ingredient = Ingredient.new(ingredient_params) # Create a new Ingredient object with `name`
    @ingredient.cocktail = @cocktail # Set the ingredient `cocktail_id` to the id of the cocktail object
    @ingredient.save
  end

private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
