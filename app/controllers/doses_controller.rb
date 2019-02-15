class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  # POST /cocktails/:cocktails_id/doses
  def create
    @cocktail = Cocktail.find(params[:cocktail_id]) # get cocktail object from DB

    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.find(params[:id])
    @dose.cocktail.destroy
    redirect_to cocktail_path(@cocktail)
  end

  # def edit
  #   @cocktail = Cocktail.find(params[:cocktail_id])
  #   @dose.cocktail.edit(params[:id])
  #   #redirect_to cocktail_path(@cocktail)
  # end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
