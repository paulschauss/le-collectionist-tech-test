# frozen_string_literal: true

# This migration is added by the `rails g migration add_slots` command.
class CreateSlots < ActiveRecord::Migration[7.0]
  def change
    create_table :slots do |t|
      t.time :start
      t.time :end
      t.string :day

      t.timestamps
    end
  end
end
