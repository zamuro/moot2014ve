class Distrito < ActiveRecord::Base
	belongs_to :region
	has_many :grupo
end
