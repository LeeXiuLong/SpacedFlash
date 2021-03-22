class RemoveBox < ActiveRecord::Migration[5.2]
  def change
    drop_table :box
  end
end
