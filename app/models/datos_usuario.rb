class DatosUsuario < ActiveRecord::Base
	self.primary_key = 'usuario_id'
	validates_presence_of :direccion1, :tel1, :contacto1, :tipo_sangre_id
	validates_uniqueness_of :correo, :usuario_id
	belongs_to :tipo_sangre
end
