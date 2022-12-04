class Review < ApplicationRecord
  belongs_to :book
  validates :user_id, presence: true
  validates :book_id, presence: true
  validates :content_body, presence: true, length: { within: 10..50 }
  validates :rating, presence: true, numericality: { integer: true, less_than_or_equal_to: 5, greater_than_or_equal_to: 1 }
end