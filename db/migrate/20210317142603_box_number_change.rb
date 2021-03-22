class BoxNumberChange < ActiveRecord::Migration[5.2]
  def change
    remove_column :boxes, :box_number
    add_column :boxes, :box_number, :integer, unique: true
    add_index :boxes, :box_number
  end
end
