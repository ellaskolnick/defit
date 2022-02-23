class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show] #TBDeleted
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save!
      redirect_to product_path(@product), notice: 'Product Posted!'
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
    params.require(:product).permit(:name, :location, :description, :price, :size, :category, user: current_user)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
