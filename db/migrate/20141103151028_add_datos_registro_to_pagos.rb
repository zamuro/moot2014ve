class AddDatosRegistroToPagos < ActiveRecord::Migration
  def change
  	add_column :pagos, :datos_registro_id, :integer
  end
end
