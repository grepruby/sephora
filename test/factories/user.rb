# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    age { Random.rand(18..60) }
    gender { Random.rand(0..1) }
    country { Faker::Address.country_code }
    association :loyalty_account, factory: :loyalty_account
  end

  factory :loyalty_account, class: Loyalty::Account do
    level Random.rand(1..3)
  end
end
