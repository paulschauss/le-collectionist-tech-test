class AddStartTimeToSlot < ActiveRecord::Migration[7.0]
  def change
    add_column :slots, :start_hour, :integer
  end
end
