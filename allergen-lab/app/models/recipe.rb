class Recipe < ApplicationRecord
  belongs_to :user

  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients

  def self.sorted_by_ingredients
    self.all.sort_by { |recipe| recipe.ingredients.length }.reverse
  end

  def create_with_ingredients(recipe_params)
    self.create(
      name: recipe_params[:name],
      user_id: recipe_params[:user_id]
    )
    recipe_params[:ingredient_ids].each do |ing_id|
      RecipeIngredient.create(
        recipe_id: self.id,
        ingredient_id: ing_id
      )
    end
    self
  end
end
