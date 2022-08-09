class Shop < ApplicationRecord
  has_many :slots, dependent: :destroy
end
