class Grupo < ActiveRecord::Base
	belongs_to :region
	belongs_to :distrito
end
