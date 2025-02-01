# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_02_01_083654) do
  create_table "admins", force: :cascade do |t|
    t.string "email", null: false
    t.string "encypted_password", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "belongings", force: :cascade do |t|
    t.string "name"
    t.integer "human_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["human_id"], name: "index_belongings_on_human_id"
  end

  create_table "bilongings", force: :cascade do |t|
    t.string "name"
    t.integer "human_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["human_id"], name: "index_bilongings_on_human_id"
  end

  create_table "chats", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "room_id", null: false
    t.text "message", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_chats_on_room_id"
    t.index ["user_id"], name: "index_chats_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "tweet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tweet_id"], name: "index_favorites_on_tweet_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "group_users", force: :cascade do |t|
    t.integer "group_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_group_users_on_group_id"
    t.index ["user_id"], name: "index_group_users_on_user_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "humen", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "racipes", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "follow_id", null: false
    t.integer "follower_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["follow_id"], name: "index_relationships_on_follow_id"
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test1s", force: :cascade do |t|
    t.string "name"
    t.integer "human_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tweet_comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "tweet_id", null: false
    t.text "comment", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tweet_id"], name: "index_tweet_comments_on_tweet_id"
    t.index ["user_id"], name: "index_tweet_comments_on_user_id"
  end

  create_table "tweet_tags", force: :cascade do |t|
    t.integer "tag_id", null: false
    t.integer "tweet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_tweet_tags_on_tag_id"
    t.index ["tweet_id"], name: "index_tweet_tags_on_tweet_id"
  end

  create_table "tweets", force: :cascade do |t|
    t.integer "user_id", null: false
    t.text "body", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tweets_on_user_id"
  end

  create_table "user_rooms", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_user_rooms_on_room_id"
    t.index ["user_id"], name: "index_user_rooms_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.text "introduction"
    t.string "account_id", null: false
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "telephone_number", null: false
    t.boolean "is_banned", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "belongings", "humen"
  add_foreign_key "bilongings", "humen"
  add_foreign_key "chats", "rooms"
  add_foreign_key "chats", "users"
  add_foreign_key "favorites", "tweets"
  add_foreign_key "favorites", "users"
  add_foreign_key "group_users", "groups"
  add_foreign_key "group_users", "users"
  add_foreign_key "relationships", "followers"
  add_foreign_key "relationships", "follows"
  add_foreign_key "tweet_comments", "tweets"
  add_foreign_key "tweet_comments", "users"
  add_foreign_key "tweet_tags", "tags"
  add_foreign_key "tweet_tags", "tweets"
  add_foreign_key "tweets", "users"
  add_foreign_key "user_rooms", "rooms"
  add_foreign_key "user_rooms", "users"
end
