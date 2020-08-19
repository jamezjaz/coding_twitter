require 'rails_helper'
RSpec.describe 'Creates a new account', type: :feature do
  let(:user) { User.create!(username: 'Navas', fullname: 'Jesus Navas') }
  scenario 'access the home page and click the signup button' do
    visit new_user_path
    fill_in 'user[username]', with: 'Navas'
    click_button 'Sign Up'
    expect(page).to have_content("Fullname can't be blank")
    expect(page).to have_content('Fullname is too short (minimum is 5 characters)')
  end

  scenario 'access the home page and click the signup button' do
    visit new_user_path
    fill_in 'user[fullname]', with: 'James C. Odufu'
    click_button 'Sign Up'
    expect(page).to have_content("Username can't be blank")
  end

  scenario 'access the home page and click the signup button' do
    visit new_user_path
    fill_in 'user[username]', with: 'Li'
    fill_in 'user[fullname]', with: 'Maria Eugenia Queme Peña'
    click_button 'Sign Up'
    expect(page).to have_content('Username is too short (minimum is 3 characters)')
    expect(page).to have_content('Fullname is too long (maximum is 20 characters)')
  end

  scenario 'access the home page and click the signup button' do
    visit new_user_path
    fill_in 'user[username]', with: 'Wolfeschlegelsteinhausenbergerdorff'
    fill_in 'user[fullname]', with: 'Jaz'
    click_button 'Sign Up'
    expect(page).to have_content('Username is too long (maximum is 20 characters)')
    expect(page).to have_content('Fullname is too short (minimum is 5 characters)')
  end
end