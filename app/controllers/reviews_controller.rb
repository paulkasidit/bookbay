class ReviewsController < ApplicationController

  before_action :authenticate_user!, :except => [:index]
  before_action :only => [:edit, :show] do
    render :error unless current_user && current_user.admin 
  end

  def new
    @book = Book.find(params[:book_id])
    @review = @book.reviews.new
    render 'books/show'
  end

  def create
    @book = Book.find(params[:book_id])
    @review = @book.reviews.new(review_params)
    @review.user_id = current_user.id  
    if @review.save
      redirect_to product_path(@book)
    end
    render 'books/show'
  end

  def edit
    @book = Book.find(params[:book_id])
    @review = Review.find(params[:id])
    render 'books/show'
  end

  def show
    @book = Book.find(params[:book_id])
    @review = Review.find(params[:id])
    render 'books/show'
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to books_path(@review.book)
    else
      @review = Book.find(params[:album_id])
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = "Review has been deleted."
    redirect_to books_path(@review.book)
  end

  private
  def review_params
    params.require(:review).permit(:content_body, :rating)
  end

end