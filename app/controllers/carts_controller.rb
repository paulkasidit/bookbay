class CartsController < ApplicationController

  def index
    @cart = User.find(params[:user_id])
    json_response(@reviews)
  end

  def create
    @user = User.find(user_params)
    @cart = @user.carts.new(cart_params)
    json_response(@cart, :created) 
  end

  def show
    @user = User.find(user_params)
    @cart = Cart.find(params[:id])
    json_response(@cart)
  end

  def update
    @cart = Cart.find(params[:id])
    if @cart.update!(cart_params)
      render status: 200, json: {
        message: "Cart has been updated successfully."
      }
    end
  end

  def destroy
    @cart = Cart.find(params[:id])
    if @cart.destroy!(cart_params)
      render status: 200, json: {
        message: "Cart has been deleted successfully."
      }
    end
  end 

  private
  def cart_params
    params.require(:cart).permit(:user_id, :book_id)
  end 
end
