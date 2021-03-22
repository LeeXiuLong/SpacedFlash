class AddIndexes < ActiveRecord::Migration[5.2]
  def change

    add_index :answer_choices, :flashcard_id

    add_index :boxes, :box_number

    add_index :flashcards, :box_id

    remove_column :boxes, :variable
    add_column :boxes, :mod_p, :integer
  end
end
