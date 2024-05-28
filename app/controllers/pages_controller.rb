class PagesController < ApplicationController

  def home
    @supplies = Supply.all
  end

  def dashboard

  end
end
