class BooksController < ApplicationController

  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @books = Book.all
    render :index 
  end

  def show
    @book = Book.find(params[:id])
    render :show
  end

  def create
    @book = Book.create!(book_params)
    json_response(@book, :created)
  end

  def update
    @book = Book.find(params[:id])
    if @book.update!(book_params)
      render status: 200, json: {
        message: "This book has been updated successfully."
      }
    end
  end

  def destroy
    @book = Book.find(params[:id])
    if @book.destroy!(book_params)
      render status: 200, json: {
        message: "This book has been deleted successfully."
      }
    end
  end

  private
  def book_params
    params.permit(:title, :author, :genre, :price)
  end
  def json_response(object, status = 401)
    render json: object, status: status
  end
end