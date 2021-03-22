class ChangeFlashcardAnswers < ActiveRecord::Migration[5.2]
  def change
    remove_column :flashcard_answers, :answer_id
    add_column :flashcard_answers, :answer_choice_id, :integer, null: false
  end
end
