 require 'rails_helper'
 require 'spec_helper'



describe Flashcard do 
    box1 = FactoryBot.build_stubbed(:box, box_number: 1)
    box2 = FactoryBot.build_stubbed(:box, box_number: 2)
    box3 = FactoryBot.build_stubbed(:box, box_number: 3)

    subject(:flashcard) {FactoryBot.build(:flashcard, box: box2)}

    context 'associations' do
        it { should belong_to(:box) }
        it { should have_many(:flashcard_answers)}
        it { should have_many(:answer_choices)}
    end

    it 'should belong to the second box' do
        expect(subject.box.box_number).to eq(2)
    end

    context 'methods' do
        describe 'moveToFirstBox' do 
            it 'should move the card to the first box' do
                subject.moveToFirstBox()
                expect(subject.box.box_number).to eq(1)
            end
        end
    end
end

#comments