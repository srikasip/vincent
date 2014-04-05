json.array!(@vaccines) do |vaccine|
  json.extract! vaccine, :name, :due_range
  json.url vaccine_url(vaccine, format: :json)
end