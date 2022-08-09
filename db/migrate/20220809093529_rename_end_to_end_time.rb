class RenameEndToEndTime < ActiveRecord::Migration[7.0]
  def change
    rename_column :slots, :end, :end_time
  end
end
