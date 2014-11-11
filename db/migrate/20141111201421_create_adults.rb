class CreateAdults < ActiveRecord::Migration
  def change
    create_table :adults do |t|
      t.string :nombre
      t.integer :region_id
      t.integer :distrito_id
      t.date :fechaNac
      t.integer :capacitacion_id
      t.integer :area_id

      t.timestamps
    end
  end
end
