class Book < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :user 

  validates :title, presence: true
  validates :author, presence: true
  validates :genre, presence: true
  validates :price, presence: true 

  before_save(:titleize_book)

  private
    def titleize_book
      self.title = self.title.titleize
    end
    
end