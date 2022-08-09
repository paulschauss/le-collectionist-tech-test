class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :update]

  def index
    @shops = Shop.all
  end

  def show
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to new_shop_slot_path(@shop)
    else
      render :new
    end
  end

  private

  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop).permit(:name)
  end
end
