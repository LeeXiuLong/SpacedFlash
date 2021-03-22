json.set! :question, @flashcard.question
json.set! :id, @flashcard.id
json.set! :answer_choices do
    @flashcard.answer_choices.each do |answer_choice| 
        json.set! answer_choice.id do
            json.extract! answer_choice, :answer_text
        end
    end
end
json.set! :flashcard_time, @flashcard.time
json.set! :correct_answer_id, @correct_answer
json.set! :box_number, @flashcard.box.box_number
json.set! :total_num_boxes, @num_boxes