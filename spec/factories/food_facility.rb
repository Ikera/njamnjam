FactoryBot.define do
  factory :food_facility do
    name { Faker::Company.name }
    description { Faker::Lorem.sentence(3) }
  end
end
