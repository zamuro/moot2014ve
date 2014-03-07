class DatosUsuario < ActiveRecord::Base
	after_create :create_fichas_medica
end
