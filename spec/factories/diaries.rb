FactoryBot.define do
  factory :diary do
    sequence(:content) { |n| "diary_content_#{n}"}
    user_id { 1 }
  end
end
