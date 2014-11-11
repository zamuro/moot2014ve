class Adult < ActiveRecord::Base
	belongs_to :region
	belongs_to :distrito
	belongs_to :grupo

end
