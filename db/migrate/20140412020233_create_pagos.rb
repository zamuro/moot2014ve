class CreatePagos < ActiveRecord::Migration
  def change
    create_table :pagos do |t|
      t.integer :usuario_id
      t.integer :voucher
      t.decimal :monto

      t.timestamps
    end
  end
end
