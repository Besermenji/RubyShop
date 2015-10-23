class BasketsController < ApplicationController

  def index

     @baskets = Basket.where(user_id: current_user.id)
     @products = []
     @baskets.each do |b|
       @products <<  Product.find_by_id(b.product_id)
     end
     @products 
  end
  
  def create 
    tmp =  Product.find_by_id(params[:product][:id])
    
    @basket = Basket.create(product_id: params[:product][:id], user_id: current_user.id)
    if tmp.quantity-1 >=0 && tmp.update_attributes(quantity: tmp.quantity-1)
     redirect_to "/"
    end
  end
  
  def destroy
    Basket.find_by_product_id(params[:id]).destroy
    tmp = Product.find_by_id(params[:id])
    tmp.update_attributes(quantity: tmp.quantity + 1)
    redirect_to "/baskets"
  end
 
end
