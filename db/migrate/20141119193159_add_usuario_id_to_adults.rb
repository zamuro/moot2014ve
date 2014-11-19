class AddUsuarioIdToAdults < ActiveRecord::Migration
  def change
    add_column :adults, :usuario_id, :integer
  end
end
