Book.destroy_all
Review.destroy_all

50.times do |index|
  Book.create!(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, price: 19.99) 
end

250.times do |index|
  Review.create!(user_id: Faker::Name.name, book_id: 1+rand(50), content_body: Faker::Hipster.paragraph_by_chars(characters: 50, supplemental:false), rating: 1+rand(5))
end 


p "Created #{Book.count} books"
p "Created #{Review.count} reviews"

