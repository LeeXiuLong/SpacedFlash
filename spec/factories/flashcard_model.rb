FactoryBot.define do
    factory :flashcard do
        question { Faker::Quote.matz }
        time { Faker::Number.between(from: 1, to: 300) }
        association :box
    end
end