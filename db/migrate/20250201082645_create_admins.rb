class CreateAdmins < ActiveRecord::Migration[8.0]
  def change
    create_table :admins do |t|
      t.string :email ,null: false
      t.string :encypted_password ,null: false

      t.timestamps
    end
  end
end
