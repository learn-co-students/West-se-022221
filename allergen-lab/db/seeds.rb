Recipe.destroy_all
RecipeIngredient.destroy_all
Ingredient.destroy_all
User.destroy_all

@u1 = User.create(name: 'Ash')
@u2 = User.create(name: 'Brock')
@u3 = User.create(name: 'Misty')

@i1 = Ingredient.create(title: 'Milk')
@i2 = Ingredient.create(title: 'Sugar')
@i3 = Ingredient.create(title: 'Salt')
@i4 = Ingredient.create(title: 'Chicken')
@i5 = Ingredient.create(title: 'Tomato')
@i6 = Ingredient.create(title: 'Onion')
@i7 = Ingredient.create(title: 'Cheese')
@i8 = Ingredient.create(title: 'Bread')
@i9 = Ingredient.create(title: 'Butter')

@a1 = Allergy.create(user_id: @u1.id, ingredient_id: @i8.id)
@a2 = Allergy.create(user_id: @u1.id, ingredient_id: @i1.id)
@a3 = Allergy.create(user_id: @u2.id, ingredient_id: @i1.id)

@grilled_cheese = Recipe.create(name: 'Grilled Cheese', user_id: @u1.id)

RecipeIngredient.create(
  recipe_id: @grilled_cheese.id,
  ingredient_id: @i9.id
)

RecipeIngredient.create(
  recipe_id: @grilled_cheese.id,
  ingredient_id: @i8.id
)

RecipeIngredient.create(
  recipe_id: @grilled_cheese.id,
  ingredient_id: @i7.id
)
