# frozen_string_literal: true

FactoryBot.define do
  factory :shop do
    sequence(:name) { |n| "Le Collectionist #{n}" }
  end
end
