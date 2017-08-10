class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.find(params[:cocktail_id])
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    @cocktail.ingredient = Ingredient.find(params[:cocktail_id])
    if @ingredient.save
      redirect_to
    else
      render :new
    end
  end

  def dose_params
    params.require(:ingredient).permit(:name)
  end
end
