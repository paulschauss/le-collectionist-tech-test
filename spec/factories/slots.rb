# frozen_string_literal: true

FactoryBot.define do
  factory :slot do
    shop
    day { 'Monday' }
    start_hour { 9 }
    start_minute { 0 }
    end_hour { 12 }
    end_minute { 30 }
  end
end
