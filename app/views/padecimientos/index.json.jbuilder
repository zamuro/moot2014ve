json.array!(@padecimientos) do |padecimiento|
  json.extract! padecimiento, 
  json.url padecimiento_url(padecimiento, format: :json)
end
