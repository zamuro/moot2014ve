class Alergy < ActiveRecord::Base
	self.primary_key = 'usuario_id'
	validates_uniqueness_of :usuario_id
	validates_presence_of :usuario_id
	
end
