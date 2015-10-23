class BasketsController < ApplicationController

  def index

     @baskets = Basket.where(user_id: current_user.id)
  end
  
  def create 
    @basket = Basket.create(product_id: params[:product][:id], user_id: current_user.id)
    redirect_to "/"
  end
  

 
end
