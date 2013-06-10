# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :position do
    title "MyString"
    user_id 1
    farm_id 1
    tenured_since "2013-06-09"
  end
end
