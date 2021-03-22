class RemoveAnswerChoice < ActiveRecord::Migration[5.2]
  def change
    drop_table :answer_choice
  end
end
