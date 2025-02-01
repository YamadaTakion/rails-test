class CreateTweetComments < ActiveRecord::Migration[8.0]
  def change
    create_table :tweet_comments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tweet, null: false, foreign_key: true
      t.text :comment ,null: false

      t.timestamps
    end
  end
end
