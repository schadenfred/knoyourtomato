# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :community do
    languages "MyString"
    religions "MyString"
    description "MyText"
    cuisine "MyString"
    practices "MyString"
    population "MyString"
    nearest_town "MyString"
    name "MyString"
  end
end
