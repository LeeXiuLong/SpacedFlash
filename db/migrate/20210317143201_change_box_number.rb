class ChangeBoxNumber < ActiveRecord::Migration[5.2]
  def change
    remove_column :boxes, :box_number
  end
end
