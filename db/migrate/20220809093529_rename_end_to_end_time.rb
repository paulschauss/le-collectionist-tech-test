# frozen_string_literal: true

# This migration is added by the `rails g migration add_shops` command.
class RenameEndToEndTime < ActiveRecord::Migration[7.0]
  def change
    rename_column :slots, :end, :end_time
  end
end
