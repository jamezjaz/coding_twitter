class User < ApplicationRecord
    has_many :opinions, foreign_key: 'author_id'
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy

    has_many :followings, foreign_key: 'follower_id'
    has_many :following_users, through: :followings, source: :inverse_user

    has_many :followers, foreign_key: 'followed_id', class_name: 'Following'
    has_many :follower_users, through: :followers, source: :user

    # has_many :followers, foreign_key: 'followed_id', class_name: 'Following'
    # has_many :followee, through: :followers, source: :user

    has_one_attached :photo
    has_one_attached :coverimage

    def follower?(current_user, user)
      current_user.following_users.ids.include?(user)
    end

    # def follow(user)
    #   following_users << user if !self.following?(user) && self != user
    # end

    # def unfollow(user)
    #   following_users.delete(user)
    # end

    # def following?(user)
    #   following_users.include?(user)
    # end

    # def feed
    #   following_ids = 'SELECT followed_id FROM followings WHERE follower_id = :user_id'
    #   Opinion.where('user_id IN (#{following_ids}) OR user_id = :user_id', user_id: id)
    # end
end
