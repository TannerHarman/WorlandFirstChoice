class AddImageToServiceSections < ActiveRecord::Migration[5.2]
  def change
    add_column :service_sections, :main_img, :text
  end
end
