Book.destroy_all
Review.destroy_all

50.times do |index|
  Book.create!(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, price: 19.99) 
end

250.times do |index|
  Review.create!(user_id: Faker::Name.name, book_id: 1+rand(50), content_body: Faker::Hipster.paragraph_by_chars(characters: 200, supplemental:false), rating: 1+rand(5))
end 


p "Created #{Book.count} books"
p "Created #{Review.count} reviews"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
