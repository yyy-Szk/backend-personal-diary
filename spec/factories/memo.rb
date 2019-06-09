FactoryBot.define do
  factory :memo do
    sequence(:content) { |n| "memo_content_#{n}"}
    user_id { 1 }
  end
end
