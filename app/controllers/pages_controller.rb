class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

 #TBC -  before_action : find_product, only: [ :parameterName ]

  def home
  end
end
