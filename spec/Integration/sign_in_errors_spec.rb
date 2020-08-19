require 'rails_helper'
RSpec.describe 'Creates a new account and sign in', type: :feature do
  let(:user) { User.create!(username: 'Jamezjaz', fullname: 'James Chigozie Odufu') }
  scenario 'Access index page after login' do
    visit new_session_path
    fill_in 'username', with: 'Jade'
    click_button 'Login'
    expect(page).to have_content('Invalid Credentials')
  end
end