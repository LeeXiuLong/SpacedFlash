FactoryBot.define do
    factory :box do 
        mod_p { Faker::Number.between(from: 1, to: 10) }
        box_number { Faker::Number.between(from: 1, to: 10) }
    end
end