class Seed

  def self.begin
    seed = Seed.new
    seed.generate_books
  end

  def generate_books
    20.times do |i|
      50.times do |index|
        book = Book.create!(title: Faker::Book.title, 
                     author: Faker::Book.author, 
                     genre: Faker::Book.genre, 
                     price: 19.99) 
      end
      p "Created #{book.count} books"
    end
  end
end

Seed.begin