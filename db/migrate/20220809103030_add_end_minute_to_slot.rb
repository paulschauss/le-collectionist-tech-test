class AddEndMinuteToSlot < ActiveRecord::Migration[7.0]
  def change
    add_column :slots, :end_minute, :integer
  end
end
