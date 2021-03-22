class RemoveFlashcardId < ActiveRecord::Migration[5.2]
  def change
    remove_column :answer_choices, :flashcard_id
    add_column :answer_choices, :flashcard_id, :integer
  end
end
