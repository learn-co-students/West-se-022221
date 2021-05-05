Pet.destroy_all
User.destroy_all

@u1 = User.create(username: 'noobmister69', password: 'lordofthunder')
@u2 = User.create(username: 'strongestavenger', password: 'psych')

4.times do
  Pet.create(
    name: Faker::Creature::Dog.name,
    breed: Faker::Creature::Dog.breed,
    meme_phrase: Faker::Creature::Dog.meme_phrase,
    user_id: @u1.id
  )
end

4.times do
  Pet.create(
    name: Faker::Creature::Dog.name,
    breed: Faker::Creature::Dog.breed,
    meme_phrase: Faker::Creature::Dog.meme_phrase,
    user_id: @u2.id
  )
end
