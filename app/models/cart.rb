class Cart < ApplicationRecord
  belongs_to: user

  validates_uniqueness_of :user_id, message: "You have already reviewed this product" 
  validates_uniqueness_of :book_id, message: "Book is already in your cart" 
end 