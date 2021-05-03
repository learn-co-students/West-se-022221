class Ingredient < ApplicationRecord

  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

  has_many :allergies
  has_many :users, through: :allergies

  def self.sorted_by_allergies
    self.all.sort_by { |ingredient| ingredient.users.length }.reverse
  end
end
