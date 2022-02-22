class BookingsController < ApplicationController
  before_action :set_product, only: [:index, :show, :new, :create]
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @booking = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.product = @product
    if @booking.save
      redirect_to @product, notice: 'You have rented this item!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to product_path(@product)
  end

  def destroy
    @booking.destroy
    redirect_to root
  end

  private

  def set_product
    @product = Product.find(params[:product_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
