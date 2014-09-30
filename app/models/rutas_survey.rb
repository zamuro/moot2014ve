class RutasSurvey < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :route
	validates_uniqueness_of :usuario_id
	validates_presence_of :ruta1
end
