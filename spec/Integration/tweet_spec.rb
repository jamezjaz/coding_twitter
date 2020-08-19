require 'rails_helper'
RSpec.describe 'Creates a new tweet', type: :feature do
  let(:user) { User.create!(username: 'JamezBond', fullname: '007 Jaz') }
  scenario 'Access index page and create a tweet' do
    visit new_session_path
    fill_in 'username', with: user.username
    click_button 'Login'
    expect(page).to have_content('You have logged in successfully')
    expect(page).to have_button('Tweet')
    fill_in 'text', with: 'Coding challenges'
    click_button 'Tweet'
    expect(page).to have_content('Your tweet has been posted.')
    expect(page).to have_content('Coding challenges')
  end
end