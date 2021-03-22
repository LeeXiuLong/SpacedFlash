class AddBoxNumbers < ActiveRecord::Migration[5.2]
  def change
    add_column :boxes, :box_number, :integer
    add_index :boxes, :box_number, unique: true
  end
end
