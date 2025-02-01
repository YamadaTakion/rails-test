class CreateBilongings < ActiveRecord::Migration[8.0]
  def change
    create_table :bilongings do |t|
      t.string :name
      t.references :human, null: false, foreign_key: true

      t.timestamps
    end
  end
end
