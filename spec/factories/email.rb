FactoryGirl.define do
  factory :email do
    sequence(:email) { |n| "joni.mitchell-#{n}@alberta.ca" } 
  end
end
