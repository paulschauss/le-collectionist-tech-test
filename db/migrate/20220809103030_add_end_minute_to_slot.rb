# frozen_string_literal: true

# This migration is added by the `rails g migration add_shops` command.
class AddEndMinuteToSlot < ActiveRecord::Migration[7.0]
  def change
    add_column :slots, :end_minute, :integer
  end
end
