class Box < ApplicationRecord

    #a box contains many flashcards
    has_many :flashcards
end
