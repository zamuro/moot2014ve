json.array!(@rutas_surveys) do |rutas_survey|
  json.extract! rutas_survey, 
  json.url rutas_survey_url(rutas_survey, format: :json)
end
