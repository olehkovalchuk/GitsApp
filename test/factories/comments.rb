FactoryBot.define do 
    factory :comment do
        association :article
        name { Faker::Lorem.word }
        body { Faker::Lorem.paragraph }
    end
end