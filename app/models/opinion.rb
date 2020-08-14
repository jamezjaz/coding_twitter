# rubocop:disable Layout/LineLength

class Opinion < ApplicationRecord
  validates :text, presence: true, length: { maximum: 1000, too_long: '1000 characters in post is the maximum allowed.' }

  belongs_to :user, foreign_key: 'author_id'
  scope :ordered_by_created_at, -> { order(created_at: :desc) }
  has_many :comments, dependent: :destroy
  has_many :likes
end

# rubocop:enable Layout/LineLength
