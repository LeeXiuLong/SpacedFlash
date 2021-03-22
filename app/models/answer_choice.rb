class AnswerChoice < ApplicationRecord

    has_many :flashcard_answers,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :FlashcardAnswer

    has_many :flashcards,
    through: :flashcard_answers,
    source: :flashcard

end