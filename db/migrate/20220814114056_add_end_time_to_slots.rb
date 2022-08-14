# frozen_string_literal: true

# This migration is added by the `rails g migration addEndTimeToSlots` command.
class AddEndTimeToSlots < ActiveRecord::Migration[7.0]
  def change
    add_column :slots, :end_time, :time
  end
end
