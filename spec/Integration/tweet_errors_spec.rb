require 'rails_helper'
RSpec.describe 'Creates a new tweet', type: :feature do
  let(:user) { User.create!(username: 'Lena', fullname: 'Lena Ford') }
  scenario 'Access index page and create a tweet' do
    visit new_session_path
    fill_in 'username', with: user.username
    click_button 'Login'
    expect(page).to have_content('LENA FORD')
    fill_in 'text', with: 'Hello World!' * 100
    click_button 'Tweet'
    expect(page).to have_content('Your tweet cannot be created.')
  end
end