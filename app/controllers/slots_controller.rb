class SlotsController < ApplicationController
  def new
    @shop = Shop.find(params[:shop_id])
    @slot = Slot.new
  end

  def create
    @shop = Shop.find(params[:shop_id])
    @slot = @shop.slots.create(slot_params)
    redirect_to shop_path(@shop)
  end
end
