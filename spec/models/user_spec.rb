require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.new(username: 'Jamezjaz', fullname: 'James Fahad')
    @user.save
  end

  describe 'Validation tests' do
    it 'should be invalid if fullname is more than 20 characters' do
      @user.fullname = 'name>20' * 3
      @user.save
      expect(@user).to_not be_valid
    end

    it 'should be invalid if fullname is less than 5 characters' do
      @user.fullname = 'na' * 2
      @user.save
      expect(@user).to_not be_valid
    end

    it 'should be invalid if fullname is nil' do
      @user.fullname = nil
      @user.save
      expect(@user).to_not be_valid
    end

    it 'should be valid if fullname is not less than 5 characters' do
      @user.fullname = 'Fahad'
      @user.save
      expect(@user).to be_valid
    end

    it 'username should be unique' do
      another_user = @user.dup
      another_user.username = @user.username
      another_user.save
      expect(another_user).to_not be_valid
    end

    it 'username should not be nil' do
      @user.username = nil
      @user.save
      expect(@user).to_not be_valid
    end

    it 'should be valid if username is not less than 3 characters' do
      @user.fullname = 'Jamezjaz'
      @user.save
      expect(@user).to be_valid
    end

    it 'should be invalid if username is more than 20 characters' do
      @user.username = 'Jamez' * 5
      @user.save
      expect(@user).to_not be_valid
    end
  end
end
