Order.destroy_all
Book.destroy_all
Author.destroy_all
Genre.destroy_all
Customer.destroy_all


[*1..10].each{|item| Genre.create(name:Faker::Book.genre )}
[*1..10].each{|item| Author.create(name:Faker::Book.author, bio:Faker::Quote.most_interesting_man_in_the_world, age:rand(100) )}
[*1..50].each{|item| Book.create(title:Faker::Book.title, description:Faker::Fantasy::Tolkien.poem, price:Faker::Commerce.price, author_id:Author.all.sample.id, genre_id:Genre.all.sample.id)}
[*1..10].each{|item| Customer.create(name:Faker::Name.name  )}
[*1..50].each{|item| Order.create(customer_id:Customer.all.sample.id, book_id:Book.all.sample.id )}


binding.pry