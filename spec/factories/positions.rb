# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :position do
    title "MyString"
    positionable_id 1
    positionable_type "farm"
    user_id 1
    tenured_since "2013-06-09"
  end
end
