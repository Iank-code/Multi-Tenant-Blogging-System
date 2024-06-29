class CreateAdmins < ActiveRecord::Migration[7.1]
  def change
    create_table :admins do |t|
      t.references :organisation, null: false, foreign_key: true
      t.string :username
      t.string :email

      t.timestamps
    end

    add_index :admins, :email, :unique =>  true
  end
end
