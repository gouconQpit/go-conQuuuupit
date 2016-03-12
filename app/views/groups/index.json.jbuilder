json.array!(@groups) do |group|
 
  json.extract! group, :id, :name, :description

  json.extract! group, :id, :name, :area_id, :average_age, :pr_text, :match_log_id, :time_id, :rate
 
  json.url group_url(group, format: :json)
end
