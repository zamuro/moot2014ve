class Pago < ActiveRecord::Base
	self.primary_key = "usuario_id"
	validates_presence_of :usuario_id, :monto, :voucher
	validates_uniqueness_of :voucher
	validates :monto, numericality: { :greater_than => 99.99 }
	validates_length_of :voucher, :minimum => 12
	validates_length_of :voucher, :maximum => 15
	belongs_to :usuario
	belongs_to :datos_registro
	belongs_to :banco
end
