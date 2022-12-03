class BooksController < ApplicationController
  before_action :intialize_session
  before_action :increment_visit_count
  before_action :load_cart
  before_action :authenticate_user!, :except => [:index, :show]

  def index
    @books = Book.all
    render :index 
  end
  
  def add_to_cart 
    id = params[:id].to_i 
    session[:cart] << id unless session[:cart].include?(id)
    redirect_to root_path
  end 

  def remove_from_cart 
    id = params[:id].to_i 
    session[:cart].delete(id)
    redirect_to root_path
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

  def intialize_session 
    session[:visit_count] ||= 0 
    session[:cart] ||= []
  end

  def load_cart
    @cart = Book.find(session[:cart])
  end

  def increment_visit_count 
    session[:visit_count] += 1 
    @visit_count = session[:visit_count] 
  end

  def book_params
    params.permit(:title, :author, :genre, :price)
  end

  def json_response(object, status = 401)
    render json: object, status: status
  end

end