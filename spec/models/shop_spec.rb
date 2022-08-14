# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Shop, type: :model do
  it 'should have a name' do
    shop = FactoryBot.build(:shop, name: nil)
    expect(shop).to_not be_valid
  end

  it 'should create a shop' do
    shop = FactoryBot.create(:shop)
    expect(shop).to be_valid
  end

  it 'should have a unique name' do
    shop = FactoryBot.create(:shop)
    shop2 = FactoryBot.build(:shop, name: shop.name)
    expect(shop2).to_not be_valid
  end

  it 'should have a unique name (case insensitive)' do
    shop = FactoryBot.create(:shop)
    shop2 = FactoryBot.build(:shop, name: shop.name.upcase)
    expect(shop2).to_not be_valid
  end
end
