class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.string :name
      t.string :greeting
      t.text :about_me
      t.text :main_img
      t.text :thumb_img

      t.timestamps
    end
  end
end
