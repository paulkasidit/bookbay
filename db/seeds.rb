Book.destroy.all

50.times do |index|
  Book.create!(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, price: 19.99) 
end

p "Created #{Book.count} books"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
