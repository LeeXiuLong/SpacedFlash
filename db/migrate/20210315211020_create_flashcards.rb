class CreateFlashcards < ActiveRecord::Migration[5.2]
  def change
    create_table :flashcards do |t|
      t.text "question", null: false
      t.array "choices", null: false
      t.integer "correct_answer", null: false
      t.integer "time", null: false
      t.timestamps
    end
  end
end
