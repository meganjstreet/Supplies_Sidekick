class PagesController < ApplicationController
  def home
    @supplies = Supply.all
  end

  def dashboard
    @user = current_user
    @supplies = @user.supplies
    @offers = @user.offers
  end
end
