class AddServiceSectionReferenceToServices < ActiveRecord::Migration[5.2]
  def change
    add_reference :services, :service_sections, foreign_key: true
  end
end