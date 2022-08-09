class SlotsController < ApplicationController
  before_action :set_shop, only: %i[new create]

  def new
    @slot = Slot.new
  end

  def create
    @slot = Slot.new(slot_params)
    @slot.shop = @shop
    if @slot.save
      redirect_to new_shop_slot_path(@shop)
    else
      render :new
    end
  end

  private

  def set_shop
    @shop = Shop.find(params[:shop_id])
  end

  def slot_params
    params.require(:slot).permit(:day, :start_hour, :start_minute, :end_hour, :end_minute)
  end
end
