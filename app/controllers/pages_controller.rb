class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

 #TBC -  before_action : find_product, only: [ :parameterName ]

  def home
  end

  def dashboard
    @bookings = Booking.where(user: current_user)
    @products_bookings = Booking.select { |booking| booking.product.user }
  end
end
