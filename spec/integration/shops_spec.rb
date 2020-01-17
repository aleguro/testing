require 'rails_helper'

RSpec.describe 'Shop controller', type: :feature do
  let(:user) {create(:user)}

  before do

    login_as user
  end

  scenario 'index page' do
    visit shops_path
    expect(page).to have_content('Sign out')
  end

  scenario 'view item' do

    visit shops_path

    #page.save_screenshot('screenshot.png')

    element   = find('.shop_name', match: :first)
    link_text = element.text
    element.click

    expect(page).to have_content("Name: #{link_text}")
  end
end