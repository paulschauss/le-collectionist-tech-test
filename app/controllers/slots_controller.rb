class SlotsController < ApplicationController
  before_action :set_shop, only: %i[new create]

  def new
    @slot = Slot.new
  end

  def create
    @slot = Slot.new(slot_params)
    @slot.shop = @shop
    @slot.save
    redirect_to shop_path(@shop)
  end

  private

  def set_shop
    @shop = Shop.find(params[:shop_id])
  end

  def slot_params
    params.require(:slot).permit(:day, :start, :end)
  end
end
