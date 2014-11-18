class AddDatosUsuarioIdToPagos < ActiveRecord::Migration
  def change
    add_column :pagos, :datos_usuario_id, :integer
  end
end
