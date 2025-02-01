class User < ApplicationRecord
    has_many :relationships
    has_many :group_users
    has_many :user_rooms
    has_many :chats
    has_many :tweet_comments
    has_many :tweets
    has_many :favorites
end
