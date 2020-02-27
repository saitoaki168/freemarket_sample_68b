class ProductsController < ApplicationController
  def index
  end
  
  def new
    @product = Product.new
    @product.images.build
  end


  def show
    @product = Product.find(params[:id])
    @category = @product.category
    @images = @product.images
    @image = @images.first
    @address = Address.find_by(user_id: current_user.id)
  end

end







