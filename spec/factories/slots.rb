# frozen_string_literal: true

FactoryBot.define do
  factory :slot do
    shop
    day { 'Monday' }
    start_time { '9:00' }
    end_time { '12:00' }
  end
end
