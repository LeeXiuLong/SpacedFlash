class Api::FlashcardsController < ApplicationController 
    skip_before_action :verify_authenticity_token

    def show

        #get last flashcard except on initialize of test
        if params[:id] == "0"
            old_flashcard = {id: nil}
        else
            old_flashcard = Flashcard.find(params[:id])
        end

        #get a random number
        rng = rand(1..100)

        #get all boxes and sort them reverse
        boxes = Box.all.sort().reverse!
        selected_box = nil


        #selects a box using the rng
        while !selected_box
            boxes.each do |box|
                #check the mod_p with the rng 
                if rng % box.mod_p == 0
                    #make sure there are flashcards in the box
                    if box.flashcards.length > 0
                        #make sure the box selected is not a box with only the previous card in it
                        if !(box.flashcards.length == 1 && box.flashcards[0].id == old_flashcard[id])
                            selected_box = box
                            break
                        end
                    else
                        rng = rand(1..100)
                        break
                    end
                end
            end
        end

        #find the number of flashcards in the box
        num_flashcards = selected_box.flashcards.length
        #find a random flashcard in the box

        #make sure the new flashcard is not the same as the last one
        got_new_flash = false

        #use this flashcard for our json
        while !got_new_flash
            #get random number in box
            random_flash = rand(0...num_flashcards)
            #grab a flashcard
            @flashcard = selected_box.flashcards[random_flash]
            #make sure its not the same flashcard as the previous one
            if @flashcard.id != old_flashcard[:id]
                got_new_flash = true
            end
        end
        
        #find the correct answer for this flashcard
        @flashcard.flashcard_answers.each do |answer|
            if answer.correct_answer
                @correct_answer = answer.answer_choice_id
                break
            end
        end
        
        render "api/flashcards/show"
    end

    def update
        flashcard = Flashcard.find(params[:id])
        if params[:gotCorrect] == "true" 
            flashcard.moveUpBox()
        else
            flashcard.moveToFirstBox()
        end
    end

end