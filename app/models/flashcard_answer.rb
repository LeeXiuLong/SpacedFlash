class FlashcardAnswer < ApplicationRecord
    #many to many table
    belongs_to :flashcard

    belongs_to :answer_choice
end