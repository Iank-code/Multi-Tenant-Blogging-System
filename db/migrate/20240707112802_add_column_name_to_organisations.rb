class AddColumnNameToOrganisations < ActiveRecord::Migration[7.1]
  def change
    add_column :organisations, :name, :string
  end
end
