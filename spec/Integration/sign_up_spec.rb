require 'rails_helper'

RSpec.describe 'Creates a new account', type: :feature do
  let(:user) { User.create!(username: 'Mohammad', fullname: 'Jesus Navas') }
  scenario 'access the home page and click the signup button' do
    visit new_user_path

    fill_in 'user[username]', with: 'Mohammad'
    fill_in 'user[fullname]', with: 'Jesus Navas'

    click_button 'Sign Up'

    expect(page).to have_content('You have logged in successfully')
    expect(page).to have_content('TWEET SOMETHING')
    expect(page).to have_content('JESUS NAVAS')
  end
end
