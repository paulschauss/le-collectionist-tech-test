class AddEndHourToSlot < ActiveRecord::Migration[7.0]
  def change
    add_column :slots, :end_hour, :integer
  end
end
