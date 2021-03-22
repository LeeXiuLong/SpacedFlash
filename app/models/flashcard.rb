class Flashcard < ApplicationRecord

    # a flashcard belongs in a box
    belongs_to :box

    # many to many 
    has_many :flashcard_answers,
    primary_key: :id,
    foreign_key: :flashcard_id,
    class_name: :FlashcardAnswer

    # a flashcard has several answer choices
    has_many :answer_choices,
    through: :flashcard_answers,
    source: :answer_choice

    #move the card up a box if it is not already in the last box
    def moveUpBox()
        maxBoxes = Box.all.length
        if self.box.box_number < maxBoxes
            new_box = Box.where(box_number: self.box.box_number + 1)
            self.box_id = new_box.ids[0]
            self.save
        end
    end

    # move the card to the first box
    def moveToFirstBox()
        first_box = Box.where(box_number: 1)
        self.box_id = first_box.ids[0]
        self.save
    end

end
