class AddShopToSlots < ActiveRecord::Migration[7.0]
  def change
    add_reference :slots, :shop, null: false, foreign_key: true
  end
end
