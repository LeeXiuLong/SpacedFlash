class CreateFlashcards < ActiveRecord::Migration[5.2]
  def change
    create_table :flashcards do |t|
      t.text "question", null: false
      t.integer "correct_answer_id", null: false
      t.integer "time", null: false
      t.integer "box_id", null: false
      t.timestamps
    end

    create_table :answer_choice do |t|
      t.string "answer_text", null: false
      t.integer "flashcard_id", null: false
      t.timestamps
    end

    create_table :box do |t|
      t.integer "variable", null: false
      t.integer "box_number", null: false
      t.timestamps
    end
  end
end
