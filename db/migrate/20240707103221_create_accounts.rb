class CreateAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.string :subdomain
      t.references :organisation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
