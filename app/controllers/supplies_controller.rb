class SuppliesController < ApplicationController
  before_action :authenticate_user!
  def index
    if params[:query].present?
      @supplies = Supply.where('name ILIKE ?', "%#{params[:query]}%")
    else
      @supplies = Supply.all
    end
  end

  def search
    if params[:query].present?
      @query = params[:query]
    end
    @search_supplies = Supply.joins()
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
