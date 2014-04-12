class DatosRegistro < ActiveRecord::Base
	self.primary_key = 'usuario_id'
	validates_presence_of :ci, :credencial, :distrito_id, :nombre, :region_id, :grupo_id, :rama_id, :unidad_id
	validates_uniqueness_of :ci, :credencial, :usuario_id
	validates :fechaNac, :date => { :after_or_equal_to => Date.parse("1998-07-24"), :before_or_equal_to => Date.parse("2003-07-24")}
	belongs_to :nivel
	belongs_to :region
	belongs_to :distrito
	belongs_to :grupo
	belongs_to :rama
	belongs_to :unidad		
	belongs_to :pago
	
end
