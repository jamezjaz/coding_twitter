require 'rails_helper'
RSpec.describe User, type: :model do
  let(:user) { User.create(username: 'James', fullname: 'james james') }
  let(:user2) { User.create(id: 2, username: 'James', fullname: 'james james') }
  let(:following) { user.followings.build(followed_id: 2).save }

  describe 'Following association amongst users' do

    it 'should be valid if association between user and following works' do
      user
      user2
      following
      expect(user.followings.first.followed_id).to eql(2)
    end
  end
end