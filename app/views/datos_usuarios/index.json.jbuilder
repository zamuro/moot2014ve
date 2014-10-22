json.array!(@datos_usuarios) do |datos_usuario|
  json.extract! datos_usuario, :usuario_id, :tel1, :tel2, :correo, :direccion1, :direccion2, :contacto1, :contacto2
  json.url datos_usuario_url(datos_usuario, format: :json)
end
