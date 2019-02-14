class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  # POST /cocktails/:cocktails_id/doses
  def create
    @cocktails = Cocktail.find(params[:cocktail_id]) # get cocktail object from DB

    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

private

  def ingredient_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
