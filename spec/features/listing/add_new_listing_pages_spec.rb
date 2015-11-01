require 'rails_helper'

describe 'the add listing process' do
  before do
    @user = FactoryGirl.create(:user)
  end

  it 'allows a user to add a new listing', js: true do
    visit root_path
    login_as(@user, :scope => :user)
    visit user_path(@user)
    expect(page).to have_content 'Items'
    click_on 'Add an item to swap or share'
    fill_in 'Name of the Item', :with => 'UppaBaby Vista stroller'
    fill_in 'Description of the Item', :with => 'Red color and in good condition'
    find('input[type="submit"]').click
    expect(page).to have_content 'Items'
  end

end
