json.array!(@datos_registros) do |datos_registro|
  json.extract! datos_registro, :usuario_id, :nombre, :ci, :credencial, :fechaNac, :nivel_id, :region_id, :distrito_id, :grupo_id, :rama_id, :unidad_id
  json.url datos_registro_url(datos_registro, format: :json)
end
