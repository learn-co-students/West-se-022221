class RecipesController < ApplicationController

  def index
    if params[:query] && params[:query] != ""
      @recipes = Recipe.where(name: params[:query])
    else
      @recipes = Recipe.sorted_by_ingredients
    end
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create_with_ingredients(recipe_params)
    redirect_to recipes_path
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :user_id, :ingredient_ids => [])
  end

end
