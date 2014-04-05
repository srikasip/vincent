json.array!(@villages) do |village|
  json.extract! village, :name, :state
  json.url village_url(village, format: :json)
end