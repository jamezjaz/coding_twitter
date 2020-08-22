class Like < ApplicationRecord
  validates :user_id, uniqueness: { scope: :opinion_id }

  belongs_to :user
  belongs_to :opinion
end
