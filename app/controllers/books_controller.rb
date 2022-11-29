class booksController < ApplicationController
    
  def index
    @books = Book.all 
    json_response(@books)
  end

  def search 
    book_title = params[:book_title]
    @books = Book.search(book_title)
    json_response(@books)
  end 

  def show
    @book = Book.find(params[:id])
    json_response(@book)
  end

  def create
    @book = Book.create(book_params)
    json_response(@book)
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
  end

  private
  def book_params
    params.permit(:book_title, :book_author, :book_genre, :book_price)
  end
end