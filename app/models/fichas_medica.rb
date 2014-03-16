class FichasMedica < ActiveRecord::Base
	validates_uniqueness_of :usuario_id
	belongs_to :usuario
end
