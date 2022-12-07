class Seed 

  def self.begin
    Book.destroy_all
    Review.destroy_all
    User.destroy_all
    seed = Seed.new  
    seed.generate_dummy_users 
    seed.generate_books
    seed.generate_reviews
  end 

  def generate_dummy_users 
    user1 = User.create!(email: "lala89@beverly.com", password: "adminadmin", password_confirmation: "adminadmin",username: "lala89", wallet_balance: 102.95)
    user2 = User.create!(email: "adminadmin@admin.com", password: "adminadmin", password_confirmation: "adminadmin",username: "star69", wallet_balance: 63.98 )
    user3 = User.create!(email: "pk56@pasorobleswinery.com", password: "adminadmin", password_confirmation: "adminadmin",username: "pk56",  wallet_balance: 71.12 )
    puts "Dummy accounts successfuly created, email: #{user1.email}, username #{user1.username} password: #{user1.password}."
    puts "Dummy accounts successfuly created, email: #{user2.email}, username #{user2.username} password: #{user2.password}."
    puts "Dummy accounts successfuly created, email: #{user3.email}, username #{user3.username} password: #{user3.password}."
  end

  def generate_books 
    50.times do |index|
      Book.create!(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, price: 19.99, user_id: (User.ids).sample) 
      p "Created #{Book.count} books"
    end
  end

  def generate_reviews 

    50.times do |index|
      Review.create!(user_id: (User.ids).sample, book_id: (Book.ids).sample, content_body: Faker::Hipster.paragraph_by_chars(characters: 50, supplemental:false), rating: 1+rand(5))
      p "Created #{Review.count} books"
    end


    
    
  end 

end

250.times do |index|
  Review.create!(user_id: Faker::Name.name, book_id: 1+rand(50), content_body: Faker::Hipster.paragraph_by_chars(characters: 50, supplemental:false), rating: 1+rand(5))
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
