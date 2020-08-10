class User < ApplicationRecord
    has_many :opinions
    has_many :followers, foreign_key: 'follower_id', class_name: 'Following'
    has_many :followees, foreign_key: 'followed_id', class_name: 'Folowing'

    # def friends_and_own_posts
    #   Opinions.where(user: followee).or(Opinion.where(user: self)).ordered_by_most_recent
    # end
end
