class OffersController < ApplicationController
  def new
    @supply = Supply.find(params[:supply_id])
    @offer = Offer.new
  end
  def create
    @supply = Supply.find(params[:supply_id])
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    @offer.supply = @supply
    if @offer.save!
      redirect_to offer_path(@offer)
    else
      render :new, status: :unprocessible_entity
    end
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def accept
    @offer = Offer.find(params[:id])
    @offer.status = "accepted"
    @offer.save!
    redirect_to supply_path(@offer.supply)
  end

  def decline
    @offer = Offer.find(params[:id])
    @offer.status = "declined"
    @offer.save!
    redirect_to supply_path(@offer.supply)
  end

  private

  def offer_params
    params.require(:offer).permit(:amount, :details)
  end
end
