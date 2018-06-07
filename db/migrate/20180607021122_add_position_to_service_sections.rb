class AddPositionToServiceSections < ActiveRecord::Migration[5.2]
  def change
    add_column :service_sections, :position, :integer
  end
end
