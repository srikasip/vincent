json.array!(@patients) do |patient|
  json.extract! patient, :name, :bracelet_id, :dob, :village_id, :mobile
  json.url patient_url(patient, format: :json)
end