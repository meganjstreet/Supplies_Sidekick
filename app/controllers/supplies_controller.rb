class SuppliesController < ApplicationController
  def index
    @supplies = Supply.all
  end

  def new
    @supply = Supply.new
  end

  
end
