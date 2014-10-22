class FichasMedica < ActiveRecord::Base
	validates_uniqueness_of :usuario_id
	belongs_to :usuario
	#has_and_belongs_to_many :vacuna
end
