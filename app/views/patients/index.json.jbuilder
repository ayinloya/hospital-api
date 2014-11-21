json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :nssNumber, :age, :address, :image
  json.url patient_url(patient, format: :json)
end
