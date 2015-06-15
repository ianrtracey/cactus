gender_a = ['Male', 'Female']
bool = [true, false]
sizes = ['S','M','L','XL']

Fabricator(:hack_app) do
	first_name { Faker::Name.first_name }
	last_name { Faker::Name.last_name }
	email { Faker::Internet.email }
	gender { gender_a[rand(0..1)] }  
	age { rand(13..24) }
	school { Faker::Company.name }
	do_you_need_travel_reimbursement? { bool[rand(0..1)] }
	is_this_your_first_hackathon? { bool[rand(0..1)] }
	skills { Faker::Lorem.words(rand(1..10)) }
	past_projects { Faker::Lorem.paragraph(rand(0..15)) }
	why_hack_arizona { Faker::Lorem.paragraph(rand(0..15)) }
	github { Faker::Internet.url('github.com') }
	linkedin { Faker::Internet.url('linkedin.com') }
	website { Faker::Internet.url }
	resume { Faker::Internet.url }
	teammates { 'This is where teammates will go' }
	tshirt_size { sizes[rand(0..3)] }
	accepted_code_of_conduct { true }
end