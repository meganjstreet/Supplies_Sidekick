class PagesController < ApplicationController
  def home
    @latest_supplies = Supply.all[-4..]
  end

  def dashboard
    @user = current_user
    @supplies = @user.supplies
    @offers = @user.offers
  end
end
