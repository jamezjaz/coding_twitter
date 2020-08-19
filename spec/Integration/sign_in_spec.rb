require 'rails_helper'
RSpec.describe 'Creates a new account and sign in', type: :feature do
  let(:user) { User.create!(username: 'Jamezjaz', fullname: 'James Odufu') }
  scenario 'Access index page after login' do
    visit new_session_path
    fill_in 'username', with: user.username
    click_button 'Login'
    expect(page).to have_content('You have logged in successfully')
    expect(page).to have_content('JAMES ODUFU')
    expect(page).to have_button('Tweet')
  end
end