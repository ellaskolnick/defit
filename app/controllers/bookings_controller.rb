class BookingsController < ApplicationController
  before_action :set_product, only: [:index, :new, :create]
  before_action :set_booking, only: [:edit, :update, :destroy]

  def index
    @bookings = Booking.where(user: current_user)
    @products_bookings = Booking.select { |booking| booking.product.user }
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.product = @product
    if @booking.save!
      redirect_to product_bookings_path, notice: 'You have rented this item!'
    else
      render 'products/show'
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
    redirect_to bookings_path
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
