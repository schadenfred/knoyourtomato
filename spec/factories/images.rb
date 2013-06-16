# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :image do
    name "MyString"
    imageable_type "MyString"
    imageable_id 1
  end
end
