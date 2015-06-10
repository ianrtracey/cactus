json.array!(@hack_apps) do |hack_app|
  json.extract! hack_app, :id
  json.url hack_app_url(hack_app, format: :json)
end
