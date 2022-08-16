# frozen_string_literal: true

require 'rails_helper'

feature 'visitor' do
  before do
    shop = FactoryBot.create(:shop, name: 'Le Collectionist')
    FactoryBot.create(:slot, shop: shop, day: 'Saturday', start_time: '10:30', end_time: '20:00')
    FactoryBot.create(:slot, shop: shop, day: 'Monday', start_time: '10:30', end_time: '12:00')
    FactoryBot.create(:slot, shop: shop, day: 'Monday', start_time: '17:00', end_time: '20:00')
    FactoryBot.create(:slot, shop: shop, day: 'Tuesday', start_time: '10:30', end_time: '12:00')
    FactoryBot.create(:slot, shop: shop, day: 'Tuesday', start_time: '17:00', end_time: '20:00')
    FactoryBot.create(:slot, shop: shop, day: 'Wednesday', start_time: '10:30', end_time: '12:00')
    FactoryBot.create(:slot, shop: shop, day: 'Wednesday', start_time: '17:00', end_time: '20:00')
    FactoryBot.create(:slot, shop: shop, day: 'Thursday', start_time: '10:30', end_time: '12:00')
    FactoryBot.create(:slot, shop: shop, day: 'Thursday', start_time: '17:00', end_time: '20:00')
    FactoryBot.create(:slot, shop: shop, day: 'Friday', start_time: '10:30', end_time: '12:00')
    FactoryBot.create(:slot, shop: shop, day: 'Friday', start_time: '17:00', end_time: '20:00')
    visit shops_path
    click_on 'Le Collectionist'
  end

  it 'can be on the show' do
    expect(page).to have_content 'Name shop:'
  end

  it 'can see the shops shopping hours' do
    expect(page.find('.Saturday')).to have_content '10:30-20:00'
    expect(page.find('.Monday')).to have_content '10:30-12:00 , 17:00-20:00'
    expect(page.find('.Tuesday')).to have_content '10:30-12:00 , 17:00-20:00'
    expect(page.find('.Wednesday')).to have_content '10:30-12:00 , 17:00-20:00'
    expect(page.find('.Thursday')).to have_content '10:30-12:00 , 17:00-20:00'
    expect(page.find('.Friday')).to have_content '10:30-12:00 , 17:00-20:00'
    expect(page.find('.Sunday')).to have_content 'Closed'
  end

  it "can first see the day's slot of today" do
    expect(page.find('li:first-child')).to have_content Slot.days.first
  end

  it "can see the day's slot of today in bold" do
    expect(page.find('li:first-child')[:class]).to have_content 'fw-bold'
  end
end
