class RenameStartToStartTime < ActiveRecord::Migration[7.0]
  def change
    rename_column :slots, :start, :start_time
  end
end
