class DatosRegistro < ActiveRecord::Base
	self.primary_key = 'usuario_id'
	validates_presence_of :ci, :distrito_id, :nombre, :region_id, :grupo_id
	validates_uniqueness_of :ci, :usuario_id
	validates :fechaNac, :date => { :after_or_equal_to => Date.parse("1993-02-01"), :before_or_equal_to => Date.parse("1998-12-14")}
	belongs_to :nivel
	belongs_to :region
	belongs_to :distrito
	belongs_to :grupo
	belongs_to :rama
	belongs_to :unidad		
	has_many :pago
	
end
