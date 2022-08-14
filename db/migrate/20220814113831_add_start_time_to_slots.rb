# frozen_string_literal: true

# This migration is added by the `rails g AddStartTimeToSlots` command.
class AddStartTimeToSlots < ActiveRecord::Migration[7.0]
  def change
    add_column :slots, :start_time, :time
  end
end
