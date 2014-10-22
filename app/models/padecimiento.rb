class Padecimiento < ActiveRecord::Base
	self.primary_key = 'usuario_id'
	validates_presence_of :usuario_id
	validates_uniqueness_of :usuario_id
	belongs_to :usuario
end
