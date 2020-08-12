class Opinion < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  scope :ordered_by_created_at, -> { order(created_at: :desc) }
  has_many :comments, dependent: :destroy
  has_many :likes
end
