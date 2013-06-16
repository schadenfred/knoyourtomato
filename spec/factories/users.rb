FactoryGirl.define do

  factory :user, aliases: [:harvester, :farmer, :trucker] do

  	sequence(:name)  			{ |n| "username#{n}" }
		sequence(:email)			{ |n| "user#{n}@test.com" }
		password							"password"  

	  factory :admin do 
	  	after(:create) { |user| user.add_role(:admin) }
	  end

	  factory :superadmin do 
	  	after(:create) { |user| user.add_role(:superadmin) }
	  end
  end
end
