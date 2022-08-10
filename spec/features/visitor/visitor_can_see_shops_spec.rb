require "rails_helper"

feature 'visitor' do
  it 'can see the shops' do
    shop = FactoryBot.create(:shop)
    visit shops_path
    within 'li' do
      click_on 'Le Collectionist'
    end
  end

  it 'can see the shops shopping hours' do
    shop = FactoryBot.create(:shop)
    visit shops_path
    within 'li' do
      click_on 'Le Collectionist'
    end
    expect(page).to have_content 'Monday'
    expect(page).to have_content 'Tuesday'
    expect(page).to have_content 'Wednesday'
    expect(page).to have_content 'Thursday'
    expect(page).to have_content 'Friday'
    expect(page).to have_content 'Saturday'
    expect(page).to have_content 'Sunday'
  end

  it 'can see shops who are closed' do
    shop = FactoryBot.create(:shop)
    visit shops_path
    within 'li' do
      click_on 'Le Collectionist'
    end
    expect(page).to have_content 'Closed'
  end

  it "can first see the day's slot of today" do
    shop = FactoryBot.create(:shop)
    visit shops_path
    within 'li' do
      click_on 'Le Collectionist'
    end
    expect(page.find('li:first-child')).to have_content Slot.days.first
  end

  it "can see the day's slot of today in bold" do
    shop = FactoryBot.create(:shop)
    visit shops_path
    within 'li' do
      click_on 'Le Collectionist'
    end
    expect(page.find('li:first-child')[:class]).to have_content 'fw-bold'
  end
end
