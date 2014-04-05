json.array!(@patient_vaccines) do |patient_vaccine|
  json.extract! patient_vaccine, :patient_id, :vaccine_id
  json.url patient_vaccine_url(patient_vaccine, format: :json)
end