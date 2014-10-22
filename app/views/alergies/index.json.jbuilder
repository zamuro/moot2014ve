json.array!(@alergies) do |alergy|
  json.extract! alergy, 
  json.url alergy_url(alergy, format: :json)
end
