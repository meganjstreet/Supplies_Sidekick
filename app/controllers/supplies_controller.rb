class SuppliesController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:query].present?
      @supplies = Supply.geocoded.where('name ILIKE ?', "%#{params[:query]}%")
    else
      @supplies = Supply.geocoded
    end

    @markers = @supplies.map do |supply|
      {
        lat: supply.latitude,
        lng: supply.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {supply: supply}),
        marker_html: render_to_string(partial: "marker")
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
    @offer = Offer.new
  end

  private

  def supply_params
    params.require(:supply).permit(:name, :address, :price, :description, :quantity, :photo)
  end
end
