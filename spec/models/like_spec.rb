require 'rails_helper'
RSpec.describe 'Like' do
  let(:user) { User.create(username: 'James', fullname: 'james james') }
  let(:tweet) { user.opinions.build(id: 1, text: 'It cannot be better than this').save }
  let(:like) { user.likes.build(opinion_id: 1).save }

  describe 'Association amongst users and likes' do
    it 'should be valid if association between user and like is valid' do
      user
      tweet
      like
      expect(user.likes.first.opinion_id).to eql(1)
    end
  end
end
