class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name ,null: false 
      t.text :introduction
      t.string :account_id ,null: false 
      t.string :email ,null: false 
      t.string :encrypted_password ,null: false 
      t.string :telephone_number ,null: false 
      t.boolean :is_banned ,null: false, default: false

      t.timestamps
    end
  end
end
