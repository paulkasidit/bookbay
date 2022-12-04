class BooksController < ApplicationController
  before_action :intialize_session
  before_action :increment_visit_count
  before_action :load_cart
  before_action :authenticate_user!, :except => [:index, :show]

  def index
    if current_user
      @books_by_user = Book.books_by_user(current_user.id)
      @book = Book.all
      render :index
    else 
      @book = Book.all
    end
  end

  def new 
    @book = Book.new 
  end
  
  def create
    @book.user_id  = current_user.id
    @book = Book.new(book_params)
  end

  def show
    @book = Book.find(params[:id])
    render :show
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

  def sell 
    @book = Book.find(params[:user_id])
    render :sell 
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
    params.permit(:title, :author, :genre, :price, :user_id)
  end

  def json_response(object, status = 401)
    render json: object, status: status
  end

end