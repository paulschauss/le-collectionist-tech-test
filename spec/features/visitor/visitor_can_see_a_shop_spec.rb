# frozen_string_literal: true

require 'rails_helper'

feature 'visitor' do
  before do
    FactoryBot.create(:shop)
    FactoryBot.create(:slot)
    visit shops_path
    within 'li' do
      click_on 'Le Collectionist'
    end
  end

  it 'can be on the show' do
    expect(page).to have_content 'Name shop:'
  end

  it 'can see the shops shopping hours' do
    Slot::AUTORIZED_DAYS.each do |day|
      expect(page).to have_content day
    end
  end

  it 'can see shops who are closed' do
    expect(page).to have_content 'Closed'
  end

  it "can first see the day's slot of today" do
    expect(page.find('li:first-child')).to have_content Slot.days.first
  end

  it "can see the day's slot of today in bold" do
    expect(page.find('li:first-child')[:class]).to have_content 'fw-bold'
  end
end
