# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :farm do
    fruit											"brown coconut"
    community_id							1
    planted_on 								"2013-06-08"
    area 											"MyString"
    soil_type 								"MyString"
    name 											"MyString"
    description 							"MyText"
  end
end
