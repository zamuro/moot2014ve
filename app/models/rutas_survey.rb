class RutasSurvey < ActiveRecord::Base
	self.primary_key = 'usuario_id'
	belongs_to :usuario
	belongs_to :route
	validates_uniqueness_of :usuario_id
	validates_presence_of :ruta1
end
