FactoryGirl.define do
  factory :email do
    # email "joni.mitchell@example.com"
    sequence(:email) { |n| "joni.mitchell-#{n}@alberta.ca" } 
  end
end
