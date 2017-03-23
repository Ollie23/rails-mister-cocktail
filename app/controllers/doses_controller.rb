class DosesController < ApplicationController
before_action :find_cocktail

  def new
    @dose = Dose.new
    @ingredients_collection = Ingredient.all
  end

  def create
    dose_find = dose_params.merge({cocktail_id: params[:cocktail_id]})
    @dose = Dose.new(dose_find)
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = @cocktail.dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@cocktail)
  end

  protected

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
