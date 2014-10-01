class Pago < ActiveRecord::Base
	validates_presence_of :usuario_id, :monto, :voucher
	validates_uniqueness_of :voucher
	belongs_to :usuario
	belongs_to :datos_registro
	belongs_to :banco
end
