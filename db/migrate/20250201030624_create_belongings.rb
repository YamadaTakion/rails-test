class CreateBelongings < ActiveRecord::Migration[8.0]
  def change
    create_table :belongings do |t|
      t.string :name
      t.references :human, null: false, foreign_key: true

      t.timestamps
    end
  end
end
