FactoryBot.define do 
    factory :article do
        association :author
        title { Faker::Lorem.word }
        body { Faker::Lorem.paragraph }
    end
end