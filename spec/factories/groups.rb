FactoryBot.define do
  factory :group do
    name { "My Group" }
    
    trait :with_user do
      association :user
    end
  end
end
