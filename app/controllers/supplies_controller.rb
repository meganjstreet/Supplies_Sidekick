class SuppliesController < ApplicationController
  before_action :authenticate_user!
  def index
    @supplies = Supply.all
    @markers = @supplies.geocoded.map do |supply|
      {
        lat: supply.latitude,
        lng: supply.longitude
      }
    end
  end

  def new
    @supply = Supply.new
  end

  def create
    @supply = Supply.new(supply_params)
    @user = current_user
    @supply.user = @user
    if @supply.save!
      redirect_to supplies_path
    else
      render :new, status: :unprocessible_entity
    end
  end

  def show
    @user = current_user
    @supply = Supply.find(params[:id])
  end

  private

  def supply_params
    params.require(:supply).permit(:name, :address, :price, :description, :quantity, :img_url)
  end
end
