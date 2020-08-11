class User < ApplicationRecord
    has_many :opinions, foreign_key: 'author_id'

    has_many :followings, foreign_key: 'follower_id'
    has_many :following_users, through: :followings, source: :user

    has_many :followers, foreign_key: 'followed_id', class_name: 'Following'
    has_many :follower_users, through: :followers, source: :inverse_user

    # has_many :followers, foreign_key: 'followed_id', class_name: 'Following'
    # has_many :followee, through: :followers, source: :user

    has_one_attached :photo
    has_one_attached :coverimage

    def follower?(current_user, user)
      current_user.following_users.ids.include?(user)
    end
end
