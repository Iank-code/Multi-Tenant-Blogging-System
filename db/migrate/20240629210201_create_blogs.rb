class CreateBlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :blogs do |t|
      t.references :organisation, null: false, foreign_key: true
      t.references :admin, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end

    add_index :blogs, :content, :unique =>  true
  end
end
