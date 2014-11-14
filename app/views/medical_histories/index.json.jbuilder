json.array!(@medical_histories) do |medical_history|
  json.extract! medical_history, :id, :bp, :temperature, :weight, :signsymptoms, :diagnosis, :drugs, :labTest
  json.url medical_history_url(medical_history, format: :json)
end
