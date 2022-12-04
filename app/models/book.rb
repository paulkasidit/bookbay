class Book < ApplicationRecord
  has_many :reviews, dependent: :destroy
  belongs_to :user 

  validates :title, presence: true
  validates :author, presence: true
  validates :genre, presence: true
  validates :price, presence: true 
  validates :user_id, presence: true

  before_save(:titleize_book)

  def self.books_by_user(user) 
    where(:user_id => user)
  end

  private
    def titleize_book
      self.title = self.title.titleize
    end
    
end