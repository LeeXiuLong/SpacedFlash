class ChangeCorrectAnswer < ActiveRecord::Migration[5.2]
  def change

    remove_column :flashcards, :correct_answer_id
    add_column :answer_choices, :correct_answer, :boolean
  end
end
