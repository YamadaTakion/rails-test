class CreateTest1s < ActiveRecord::Migration[8.0]
  def change
    create_table :test1s do |t|
      t.string :name
      t.integer :human_id

      t.timestamps
    end
  end
end
