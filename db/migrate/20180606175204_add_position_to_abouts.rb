class AddPositionToAbouts < ActiveRecord::Migration[5.2]
  def change
    add_column :abouts, :position, :integer
  end
end
