FactoryBot.define do 
    factory :author do
        name { Faker::Name.name }
        email { Faker::Internet.email }
        city { Faker::Address.city }
        adress { Faker::Address.street_address }
        birthDate { Faker::Date.birthday(min_age: 18, max_age: 65) }
    end
end