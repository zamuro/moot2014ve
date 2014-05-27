@datos_registro = DatosRegistro.find(params[:id])
@datos_usuario = DatosUsuario.find(params[:id])
@alergia = Alergy.find(params[:id])
@padecimiento = Padecimiento.find(params[:id])
@enfermedad = Enfermedade.find(params[:id])
@vacuna = Vacuna.find(params[:id])

prawn_document(:page_size => "A4") do |pdf|
	pdf.text "Planilla de inscripción MOOT NACIONAL 2014", :style => :bold, :size => 20, :align => :center
	pdf.move_down(10)
	pdf.text "Datos del participante", :size => 16, :align => :left
	pdf.table([
		["Nombre", "#{@datos_registro.nombre.upcase}", "Fecha de nacimiento", "#{@datos_registro.fechaNac}"],
	],
	:width => 500)
	pdf.table([
		["Distrito", "#{@datos_registro.distrito.distrito}", "Grupo", "#{@datos_registro.grupo.grupo}"],
	],
	:width => 500)
	pdf.table([
		["Dirección de habitación", "#{@datos_usuario.direccion1}", "Teléfono principal", "#{@datos_usuario.tel1}"],
		["Dirección de contacto", "#{@datos_usuario.direccion2}", "Teléfono de contacto", "#{@datos_usuario.tel2}"],
		["Correo electrónico", "#{@datos_usuario.correo}", "Contacto principal", "#{@datos_usuario.contacto1}"],
		],
	:width => 500, :cell_style => {:width => 125})
	pdf.move_down(20)
	pdf.text "Ficha médica", :size => 16, :align => :left
	pdf.text "Alergias", :size => 14
	for alergia in @alergia.attributes.keys.drop(2)
		pdf.table([ 
			["#{alergia.humanize}", "#{@alergia.attributes[alergia].to_s}"]
			],
		:width => 500, :cell_style => {:width => 250})
	end
	pdf.move_down(10)
	pdf.text "Vacunas", :size => 14
	for vacuna in @vacuna.attributes.keys.drop(2)
		pdf.table([
			["#{vacuna.humanize}", "#{@vacuna.attributes[vacuna].to_s}"]
			],
		:width => 500, :cell_style => {:width => 250})
	end
	pdf.move_down(10)
	pdf.text "Padecimientos", :size => 14
	for padecimiento in @padecimiento.attributes.keys.drop(2)
	pdf.table([ 
		["#{padecimiento.humanize}", "#{@padecimiento.attributes[padecimiento].to_s}"],
		],
	:width => 500, :cell_style => {:width => 250})
	end
pdf.move_down(10)
pdf.text "Enfermedades", :size => 14
for enfermedad in @enfermedad.attributes.keys.drop(2)
	pdf.table([ 
		["#{enfermedad.humanize}", "#{@enfermedad.attributes[enfermedad].to_s}"],
		],
	:width => 500, :cell_style => {:width => 250})
end
end