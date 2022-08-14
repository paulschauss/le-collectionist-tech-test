# frozen_string_literal: true

# This migration is added by the `rails g migration add_shops` command.
class RenameStartToStartTime < ActiveRecord::Migration[7.0]
  def change
    rename_column :slots, :start, :start_time
  end
end
