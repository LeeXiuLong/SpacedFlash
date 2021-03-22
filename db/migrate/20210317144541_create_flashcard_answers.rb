class CreateFlashcardAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :flashcard_answers do |t|
      t.integer :flashcard_id, null: false
      t.integer :answer_id, null: false
      t.boolean :correct_answer, null: false

      t.timestamps
    end
  end
end
