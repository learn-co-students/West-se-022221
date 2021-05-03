class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.sorted_by_allergies
  end

end
