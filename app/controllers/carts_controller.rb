class CartsController < ApplicationController

  def index
    @carts = User.find(params[:user_id])
    json_response(@reviews)
  end

  

end
