class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @latest_supplies = Supply.order(created_at: :desc).limit(4) # Fetch the latest 4 supplies
  end

  def dashboard
    @user = current_user
    @supplies = @user.supplies
    @offers = @user.offers
  end
end
