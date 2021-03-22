class CreateBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :boxes do |t|
      t.integer "variable", null: false
      t.integer "box_number", null: false
      t.timestamps
    end
  end
end
