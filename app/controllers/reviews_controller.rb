class ReviewsController < ApplicationController
  before_action :authenticate_user!, :only => [:new]
  
  def index
    @reviews = Review.find(params[:book_id])
    json_response(@reviews)
  end

  def create
    @book = Book.find(book_params)
    @review = @book.reviews.new(review_params)
    json_response(@review, :created)
  end

  def show
    @book = Book.find(params[:book_id])
    @review = Review.find(params[:id])
    json_response(@review)
  end

  def update
    @review = Review.find(params[:id])
    if @review.update!(review_params)
      render status: 200, json: {
        message: "This review has been updated successfully."
      }
    end
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.destroy!(review_params)
      render status: 200, json: {
        message: "This review has been deleted successfully."
      }
    end
  end 
  
  private
    def review_params
      params.require(:review).permit(:user_id, :book_id, :content_body, :rating)
    end 
end