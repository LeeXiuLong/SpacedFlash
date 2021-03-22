class Flashcard < ApplicationRecord

    belongs_to :box

    has_many :flashcard_answers,
    primary_key: :id,
    foreign_key: :flashcard_id,
    class_name: :FlashcardAnswer

    has_many :answer_choices,
    through: :flashcard_answers,
    source: :answer_choice

    def moveUpBox()
        maxBoxes = Box.all.length
        if self.box.box_number < maxBoxes
            new_box = Box.where(box_number: self.box.box_number + 1)
            self.box_id = new_box.ids[0]
            self.save
        end
    end

    def moveToFirstBox()
        first_box = Box.where(box_number: 1)
        self.box_id = first_box.ids[0]
        self.save
    end

end
