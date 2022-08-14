# frozen_string_literal: true

# This migration is added by the `rails g migration add_shops` command.
class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :name

      t.timestamps
    end
  end
end
