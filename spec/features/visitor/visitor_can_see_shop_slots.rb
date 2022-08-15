# frozen_string_literal: true

require 'rails_helper'

feature 'visitor' do
  before do
    FactoryBot.create(:shop)
    Slot::AUTORIZED_DAYS.each do |day|
      case day
      when 'Sunday'
        skip
      when 'Saturday'
        FactoryBot.create(:slot, day: day, start_time: '10:30', end_time: '20:00')
      else
        FactoryBot.create(:slot, day: day, start_time: '10:30', end_time: '15:00')
        FactoryBot.create(:slot, day: day, start_time: '17:00', end_time: '20:00')
      end
    end
    visit shops_path
    within 'li' do
      click_on 'Le Collectionist'
    end
  end
end
