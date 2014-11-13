class Adult < ActiveRecord::Base
	belongs_to :region
	belongs_to :distrito
	belongs_to :grupo
	belongs_to :capacitacion
	validates_uniqueness_of :ci

end
