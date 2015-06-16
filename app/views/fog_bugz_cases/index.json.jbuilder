json.array!(@fog_bugz_cases) do |fog_bugz_case|
  json.extract! fog_bugz_case, :id, :case_id, :title, :estimated, :current, :person, :resolved?
  json.url fog_bugz_case_url(fog_bugz_case, format: :json)
end
