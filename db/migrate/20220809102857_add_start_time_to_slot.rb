# frozen_string_literal: true

# This migration is added by the `rails g migration add_start_time_to_slot` command.
class AddStartTimeToSlot < ActiveRecord::Migration[7.0]
  def change
    add_column :slots, :start_hour, :integer
  end
end
