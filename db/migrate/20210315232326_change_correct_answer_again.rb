class ChangeCorrectAnswerAgain < ActiveRecord::Migration[5.2]
  def change
    remove_column :answer_choices, :correct_answer
    add_column :answer_choices, :correct_answer, :boolean, null: false
  end
end
