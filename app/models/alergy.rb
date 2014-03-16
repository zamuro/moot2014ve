class Alergy < ActiveRecord::Base
	validates_uniqueness_of :usuario_id
	validates_presence_of :usuario_id
end
