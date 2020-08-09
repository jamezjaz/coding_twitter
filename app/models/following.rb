class Following < ApplicationRecord
  belongs_to :followers, foreign_key: 'follower_id', class_name: 'User'
  belongs_to :followee, foreign_key: 'followed_id', class_name: 'User'
end
