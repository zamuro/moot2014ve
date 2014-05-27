@datos_registro = DatosRegistro.find(params[:id])
@datos_usuario = DatosUsuario.find(params[:id])
@alergia = Alergy.find(params[:id])
@padecimiento = Padecimiento.find(params[:id])
@enfermedad = Enfermedade.find(params[:id])
@vacuna = Vacuna.find(params[:id])

prawn_document(:page_size => "A4") do |pdf|
	pdf.text "Planilla de registro Moot Nacional 2014", :style => :bold, :size => 24, :align => :center
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
	:width => 500)
	pdf.move_down(20)
	pdf.text "Ficha médica", :size => 16, :align => :left
	pdf.text "Alergias", :size => 14
	pdf.table([ 
		["Alimentos", "#{@alergia.detalle_alimento}", "Picaduras", "#{@alergia.detalle_picaduras}"],
		["Medicinas", "#{@alergia.detalle_medicinas}", "Otros", "#{@alergia.otras}"],
		],
	:width => 500)
	pdf.move_down(10)
	pdf.text "Vacunas", :size => 14
	pdf.table([ 
		["Sarampión, #{
		if @vacuna.sarampion == true
			"+"
		else
			"-"
		end
			}", 
		"Fiebre Tifoidea: #{
		if @vacuna.tiroidea == true
			"+"
		else
			"-"
		end
		}", 
		"Hepatitis: #{
		if @vacuna.hepatitis == true
			"+"
		else
			"-"
		end
		}", 
		"Influenza: #{
		if @vacuna.gripe == true
			"+"
		else
			"-"			
		end
		}"
		],
		["Rubeola: #{
		if @vacuna.rubeola == true
			"+"
		else
			"-"			
		end
		}", 
		"Tétanos: #{
		if @vacuna.tetanos == true
			"+"
		else
			"-"			
		end
		}",
		"Otras: #{@vacuna.otras}"],
		],
	:width => 500)
	pdf.move_down(10)
	pdf.text "Padecimientos", :size => 14
	pdf.table([ 
		["Lechina: #{
		if @padecimiento.lechina == true
			"+"
		else
			"-"
		end
			}", 
		"Hepatitis: #{
		if @padecimiento.hepatitis == true
			"+"
		else
			"-"
		end
		}", 
		"Rubeola: #{
		if @padecimiento.rubeola == true
			"+"
		else
			"-"
		end
		}", 
		"Apendicitis: #{
		if @padecimiento.apendicitis == true
			"+"
		else
			"-"			
		end
		}"
		],
		["Sarampión: #{
		if @padecimiento.sarampion == true
			"+"
		else
			"-"			
		end
		}", 
		"Insomnio: #{
		if @padecimiento.insomnio == true
			"+"
		else
			"-"			
		end
		}",
		"Paperas: #{
		if @padecimiento.paperas == true
			"+"
		else
			"-"			
		end
		}",
		"Sonambulismo: #{
		if @padecimiento.sonambulismo == true
			"+"
		else
			"-"			
		end
		}"],
		["Asma: #{
		if @padecimiento.asma == true
			"+"
		else
			"-"			
		end
		}", 
		"Estreñimiento: #{
		if @padecimiento.estrenimiento == true
			"+"
		else
			"-"			
		end
		}",
		"Acidez: #{
		if @padecimiento.acidez == true
			"+"
		else
			"-"			
		end
		}",
		"Úlcera: #{
		if @padecimiento.ulcera == true
			"+"
		else
			"-"			
		end
		}"],
		["Reflujo: #{
		if @padecimiento.reflujo == true
			"+"
		else
			"-"			
		end
		}", 
		"Bulimia: #{
		if @padecimiento.bulimia == true
			"+"
		else
			"-"			
		end
		}",
		"HIV: #{
		if @padecimiento.hiv == true
			"+"
		else
			"-"			
		end
		}",
		"Otras: #{@padecimiento.otras}"],
		],
	:width => 500)
pdf.move_down(10)
pdf.text "Enfermedades", :size => 14
pdf.table([		
	["Diabetes, #{
		if @enfermedad.diabetes == true
			"+"
		else
			"-"
		end
			}", 
		"Cáncer: #{
		if @enfermedad.cancer == true
			"+"
		else
			"-"
		end
		}", 
		"Cardiopatías: #{
		if @enfermedad.cardiopatias == true
			"+"
		else
			"-"
		end
		}", 
		"Hemofilia: #{
		if @enfermedad.hemofilia == true
			"+"
		else
			"-"			
		end
		}"
		],
		["Asma: #{
		if @enfermedad.asma == true
			"+"
		else
			"-"			
		end
		}", 
		"Amigdalitis: #{
		if @enfermedad.amigdalitis == true
			"+"
		else
			"-"			
		end
		}",
		"Tensión baja: #{
		if @enfermedad.hipotension == true
			"+"
		else
			"-"			
		end
		}",
		"Tensión alta: #{
		if @enfermedad.hipertension == true
			"+"
		else
			"-"
		end
		}"],
		[
		"Epilepsia: #{
		if @enfermedad.epilepsia == true
			"+"
		else
			"-"			
		end
		}", 
		"Sinusitis: #{
		if @enfermedad.sinusitis == true
			"+"
		else
			"-"			
		end
		}",
		"Otras: #{@enfermedad.otras}"],
		],
	:width => 500)
end