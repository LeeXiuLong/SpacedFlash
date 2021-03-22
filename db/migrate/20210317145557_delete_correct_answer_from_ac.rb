class DeleteCorrectAnswerFromAc < ActiveRecord::Migration[5.2]
  def change
    remove_column :answer_choices, :correct_answer
  end
end
