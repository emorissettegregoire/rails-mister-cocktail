class CocktailsController < ApplicationController
  # Get /cocktails
  def index
    @cocktails = Cocktail.all
  end

  # GET /cocktails/1
  def show
    @cocktail = Cocktail.find(params[:id])
    @doses = Dose.where(@cocktail_id = params[:cocktail_id])
  end

  def new
    @cocktail = Cocktail.new #for simple form
  end

  def create
    cocktail = Cocktail.new(cocktail_params)

    if cocktail.save
      redirect_to cocktail_path(cocktail)
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
