class AddSlugToServiceSections < ActiveRecord::Migration[5.2]
  def change
    add_column :service_sections, :slug, :string
    add_index :service_sections, :slug, unique: true
  end
end
