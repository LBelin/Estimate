json.array!(@features) do |feature|
  json.extract! feature, :id, :title, :estimate, :actual, :num_cases, :completed?, :active?
  json.url feature_url(feature, format: :json)
end
