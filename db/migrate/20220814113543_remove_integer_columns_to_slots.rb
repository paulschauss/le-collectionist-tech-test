# frozen_string_literal: true

# This migration is added by the `rails g migration removeIntegerColumnsToSlots` command.
class RemoveIntegerColumnsToSlots < ActiveRecord::Migration[7.0]
  def change
    remove_column :slots, :start_hour
    remove_column :slots, :end_hour
    remove_column :slots, :start_minute
    remove_column :slots, :end_minute
  end
end
