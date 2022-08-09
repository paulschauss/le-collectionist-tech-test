class RemoveStartTimeToSlot < ActiveRecord::Migration[7.0]
  def change
    remove_column :slots, :start_time
    remove_column :slots, :end_time
  end
end
