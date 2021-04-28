Store.destroy_all
Pet.destroy_all

s1 = Store.create(name: 'Petsy', location: 'Houston')
s2 = Store.create(name: 'PetBay', location: 'Online')

p1 = Pet.create(name: 'Pikachu', breed: 'Pokemon', store_id: s1.id)
p2 = Pet.create(name: 'Scooby', breed: 'Dog', store_id: s1.id)
p3 = Pet.create(name: 'Tom', breed: 'Cat', store_id: s1.id)
p4 = Pet.create(name: 'Jerry', breed: 'Rat', store_id: s2.id)
