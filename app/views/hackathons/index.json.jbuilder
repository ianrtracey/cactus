json.array!(@hackathons) do |hackathon|
  json.extract! hackathon, :id
  json.url hackathon_url(hackathon, format: :json)
end
