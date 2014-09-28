class RutasSurvey < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :route
end
