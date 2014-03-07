json.array!(@enfermedades) do |enfermedade|
  json.extract! enfermedade, 
  json.url enfermedade_url(enfermedade, format: :json)
end
