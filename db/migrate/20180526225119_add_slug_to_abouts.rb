class AddSlugToAbouts < ActiveRecord::Migration[5.2]
  def change
    add_column :abouts, :slug, :string
    add_index :abouts, :slug, unique: true
  end
end
