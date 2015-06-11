Fabricator(:hack_app) do
	first_name { Faker::Name.first_name }
	last_name { Faker::Name.last_name }
	school { Faker::Company.name }
	resume { Faker::Internet.url('github.com') }
	website { Faker::Internet.url }
	facebook { Faker::Internet.url('facebook.com') }
	github { Faker::Internet.url('github.com') }
	website { Faker::Internet.url }
end