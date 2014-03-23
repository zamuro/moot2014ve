@datos_registro = DatosRegistro.find(params[:id])
@datos_usuario = DatosUsuario.find(params[:id])
@alergia = Alergy.find(params[:id])
@padecimiento = Padecimiento.find(params[:id])
@enfermedad = Enfermedade.find(params[:id])
@vacuna = Vacuna.find(params[:id])

prawn_document(:page_size => "A4") do |pdf|
	pdf.text "Planilla de inscripción CAREPAS 2014 Región Metropolitana", :style => :bold, :size => 24, :align => :center
	pdf.move_down(10)
	pdf.text "Datos del participante", :size => 16, :align => :left
	pdf.table([
		["Nombre", "#{@datos_registro.nombre.upcase}", "Fecha de nacimiento", "#{@datos_registro.fechaNac}"],
	],
	:width => 500)
	pdf.table([
		["Distrito", "#{@datos_registro.distrito.distrito}", "Grupo", "#{@datos_registro.grupo.grupo}", "Unidad", "#{@datos_registro.unidad.unidad}"],
	],
	:width => 500)
	pdf.table([
		["Dirección de habitación", "#{@datos_usuario.direccion1}", "Teléfono principal", "#{@datos_usuario.tel1}"],
		["Dirección de contacto", "#{@datos_usuario.direccion2}", "Teléfono de contacto", "#{@datos_usuario.tel2}"],
		["Correo electrónico", "#{@datos_usuario.correo}", "Contacto principal", "#{@datos_usuario.contacto1}"],
		],
	:width => 500)
	pdf.move_down(10)
	pdf.text "Ficha médica", :size => 16, :align => :left
	pdf.text "Alergias", :size => 12
	pdf.table([ 
		["Alimentos", "#{@alergia.detalle_alimento}", "Picaduras", "#{@alergia.detalle_picaduras}"],
		["Medicinas", "#{@alergia.detalle_medicinas}", "Otros", "#{@alergia.otras}"],
		],
	:width => 500)

end