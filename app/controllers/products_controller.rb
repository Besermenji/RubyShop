class ProductsController < ApplicationController
  def index
    tmp = Category.find(params[:category_id] )
    @products = tmp.products
  end

  def show
   @product = Product.find(params[:id])
  end


  def edit
    @product = Product.find(params[:id]) 
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to "/"
    else
      redirect_to edit_product
    end
  end
  

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
      if @product.save
        redirect_to "/"
      else
        redirect_to "/products/new"
      end

  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to "/"
  end


  private
  def product_params
    params.require(:product).permit(:name,:description,:image,:category_id,:quantity,:price)
  end

end
