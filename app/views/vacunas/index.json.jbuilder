json.array!(@vacunas) do |vacuna|
  json.extract! vacuna, 
  json.url vacuna_url(vacuna, format: :json)
end
