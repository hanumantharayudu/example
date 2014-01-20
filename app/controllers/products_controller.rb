class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])
    @product.save
    redirect_to products_path
  end

  def edit
    @product = Product.find(params[:id])
  end
  
  def update
    @product = Product.find(params[:id])
    @product.update_attributes(params[:product])
    redirect_to product_path(@product)
  end

  def show
    @product = Product.find(params[:id])
  end
 
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to new_product_path
  end
  
  def index
    @products = Product.all
  end
  
end
