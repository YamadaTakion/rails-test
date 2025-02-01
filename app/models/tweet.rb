class Tweet < ApplicationRecord
  belongs_to :user
  has_many :tweet_comments
  has_many :tweet_tags
  has_many :favorites
end
