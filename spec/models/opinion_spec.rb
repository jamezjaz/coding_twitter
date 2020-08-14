require 'rails_helper'

RSpec.describe Opinion, type: :model do
  let(:author) { User.create(username: 'Jamezjaz', fullname: 'Antonio Jacquez') }
  let(:opinion) { author.opinions.create(author_id: 1, text: 'Hurray!!! Happy Birthday') }

  describe 'Validation tests' do
    it 'should not be valid if author is nil' do
      opinion.author_id = nil
      opinion.save
      expect(opinion).to_not be_valid
    end

    it 'should not be valid if text is nil' do
      opinion.text = nil
      opinion.save
      expect(opinion).to_not be_valid
    end

    it 'should not be valid if text is more then 1000 characters' do
      opinion.text = '>1000chars' * 101
      opinion.save
      expect(opinion).to_not be_valid
    end

    it 'obtain the author of the opinion' do
      author
      opinion
      expect(author.opinions.first).not_to be_nil
    end

    it 'should be invalid if author_id is incorrect' do
      opinion.author_id = 2
      expect(opinion).to_not be_valid
    end
  end
end
