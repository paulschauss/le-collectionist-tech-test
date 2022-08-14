# frozen_string_literal: true

class Shop < ApplicationRecord
  has_many :slots, dependent: :destroy

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
