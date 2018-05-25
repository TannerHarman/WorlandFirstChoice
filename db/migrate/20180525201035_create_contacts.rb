class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :title
      t.string :phone_number
      t.string :fax_number
      t.string :email
      t.string :address
      t.text :main_img

      t.timestamps
    end
  end
end
