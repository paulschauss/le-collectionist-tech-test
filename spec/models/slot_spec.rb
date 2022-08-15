# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Slot, type: :model do
  it 'should have a shop' do
    slot = FactoryBot.build(:slot, shop: nil)
    expect(slot).to_not be_valid
  end

  it 'should have a day' do
    slot = FactoryBot.build(:slot, day: nil)
    expect(slot).to_not be_valid
  end

  it 'should have a start_time and a end_time' do
    slot_start = FactoryBot.build(:slot, start_time: nil)
    slot_end = FactoryBot.build(:slot, end_time: nil)
    expect(slot_start && slot_end).to_not be_valid
  end

  it 'should have a start_time before a end_time' do
    slot = FactoryBot.build(:slot, start_time: '12:00', end_time: '9:00')
    expect(slot).to_not be_valid
  end

  it 'should not overlap with other slots' do
    shop = FactoryBot.create(:shop)
    slot = FactoryBot.create(:slot, shop: shop)
    slot_overlapping = FactoryBot.build(:slot, shop: shop, day: slot.day, start_time: slot.start_time, end_time: slot.end_time)
    expect(slot_overlapping).to_not be_valid
  end
end
