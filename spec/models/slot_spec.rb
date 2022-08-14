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

  it 'should have a start_hour' do
    slot = FactoryBot.build(:slot, start_hour: nil)
    expect(slot).to_not be_valid
  end

  it 'should have a start_minute' do
    slot = FactoryBot.build(:slot, start_minute: nil)
    expect(slot).to_not be_valid
  end

  it 'should have a end_hour' do
    slot = FactoryBot.build(:slot, end_hour: nil)
    expect(slot).to_not be_valid
  end

  it 'should have a end_minute' do
    slot = FactoryBot.build(:slot, end_minute: nil)
    expect(slot).to_not be_valid
  end

  it 'should have a start_hour before end_hour' do
    slot = FactoryBot.build(:slot, start_hour: 12, end_hour: 9)
    expect(slot).to_not be_valid
  end

  it 'should not overlap with other slots' do
    shop = FactoryBot.create(:shop)
    slot = FactoryBot.create(:slot, shop:)
    slot2 = FactoryBot.build(:slot, shop:, day: slot.day, start_hour: slot.start_hour,
                                    start_minute: slot.start_minute,
                                    end_hour: slot.end_hour, end_minute: slot.end_minute)
    expect(slot2).to_not be_valid
  end
end
