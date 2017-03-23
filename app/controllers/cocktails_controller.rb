class CocktailsController < ApplicationController
  before_action :load_cocktail, only: [:show, :edit, :update, :destroy]
  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
    redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit

  end

  def update
  end

  def destroy
  end

  private
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def load_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
