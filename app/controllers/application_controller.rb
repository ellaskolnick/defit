class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  # def search
  #   if params[:search_query].present?
  #     @products = Product.where("name ILIKE ? or category ILIKE ?", "%#{params[:search_query]}%", "%#{params[:search_query]}%")
  #     redirect_to products_path(@products)
  #   else
  #     @products = Product.all
  #   end
  # end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password) }

    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password, :current_password) }
  end
end
