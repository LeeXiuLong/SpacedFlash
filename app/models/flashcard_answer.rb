class FlashcardAnswer < ApplicationRecord
    belongs_to :flashcard

    belongs_to :answer_choice
end