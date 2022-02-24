class ProductsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show] #TBDeleted
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    # if params[:query].present?
    #   # Product.search_by_name_and_category_and_size(params[:query])
    #   @results = PgSearch.multisearch
    # else
      # @products = Product.all
    # end
    # if params[:search_query].present?
    #   @products = Product.where("name ILIKE ? or category ILIKE ?", "%#{params[:search_query]}%", "%#{params[:search_query]}%")
    #   redirect_to products_path(@products)
    # elsif
    #   @products = Product.all
    # end
    @products = Product.where("name ILIKE ? or category ILIKE ?",
      "%#{params[:search_query]}%", "%#{params[:search_query]}%")
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
    params.require(:product).permit(:name, :location, :description, :price, :size, :category, user: current_user, :photo)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
