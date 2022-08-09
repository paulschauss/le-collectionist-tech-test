class AddStartMinuteTimeToSlot < ActiveRecord::Migration[7.0]
  def change
    add_column :slots, :start_minute, :integer
  end
end
