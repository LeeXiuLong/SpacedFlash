class FixColumnsForFlashcardAnswers < ActiveRecord::Migration[5.2]
  def change
    remove_column :answer_choices, :flashcard_id
  end
end
