class CreateTweetTags < ActiveRecord::Migration[8.0]
  def change
    create_table :tweet_tags do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :tweet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
