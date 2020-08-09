class User < ApplicationRecord
    has_many :opinions
    has_many :followers, foreign_key: 'follower_id', class_name: 'Following'
    has_many :followees, foreign_key: 'followed_id', class_name: 'Folowing'
end
