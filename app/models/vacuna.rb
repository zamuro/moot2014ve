class Vacuna < ActiveRecord::Base
	self.primary_key = 'usuario_id'
	validates_presence_of :usuario_id
	validates_uniqueness_of :usuario_id
	belongs_to :usuario
	#has_and_belongs_to_many :fichas_medica
end
