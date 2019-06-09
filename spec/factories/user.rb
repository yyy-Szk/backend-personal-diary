FactoryBot.define do
  factory :user do
    id { 1 }
    sequence(:email) { |n| "test#{n}@test.com" }
    password { '12345678' }
  end
end
