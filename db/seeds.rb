# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

require 'faker'

# Admins
1.times do
  Admin.create!(
    email: Faker::Internet.email,
    encrypted_password: Faker::Internet.password(min_length: 8)
  )
end

# Users
100.times do
    User.create!(
      name: Faker::Name.name,
      introduction: Faker::Lorem.paragraph,
      account_id: Faker::Internet.username,
      email: Faker::Internet.email,
      encrypted_password: Faker::Internet.password(min_length: 8),
      telephone_number: Faker::PhoneNumber.phone_number,
      is_banned: false
    )
  end
  # Tweets
100.times do
    Tweet.create!(
      user_id: rand(1..100),
      body: Faker::Lorem.paragraph
    )
  end

# Chats
100.times do
  Chat.create!(
    user_id: rand(1..100),
    room_id: rand(1..100),
    message: Faker::Lorem.sentence
  )
end

# Favorites
100.times do
  Favorite.create!(
    user_id: rand(1..100),
    tweet_id: rand(1..100)
  )
end

# GroupUsers
100.times do
  GroupUser.create!(
    group_id: rand(1..100),
    user_id: rand(1..100)
  )
end

# Groups
100.times do
  Group.create!(
    name: Faker::Team.name
  )
end





# Relationships
100.times do
  Relationship.create!(
    follow_id: rand(1..100),
    follower_id: rand(1..100)
  )
end

# Rooms
100.times do
  Room.create!
end

# Tags
100.times do
  Tag.create!(
    name: Faker::Lorem.word
  )
end

# Test1s
100.times do
  Test1.create!(
    name: Faker::Lorem.word,
    human_id: rand(1..100)
  )
end

# TweetComments
100.times do
  TweetComment.create!(
    user_id: rand(1..100),
    tweet_id: rand(1..100),
    comment: Faker::Lorem.sentence
  )
end

# TweetTags
100.times do
  TweetTag.create!(
    tag_id: rand(1..100),
    tweet_id: rand(1..100)
  )
end



# UserRooms
100.times do
  UserRoom.create!(
    user_id: rand(1..100),
    room_id: rand(1..100)
  )
end


