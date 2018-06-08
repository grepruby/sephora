FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    age { Random.rand(18..60) }
    gender { Random.rand(0..1) }
    country { Faker::Address.country }
  end
end
