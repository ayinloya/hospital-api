json.array!(@hospitals) do |hospital|
  json.extract! hospital, :id, :name, :region
  json.url hospital_url(hospital, format: :json)
end
