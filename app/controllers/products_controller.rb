class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
    @new_booking = Booking.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    if @product.save
      redirect_to @product, notice: 'Product Posted!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :location, :description, :price, :size)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
