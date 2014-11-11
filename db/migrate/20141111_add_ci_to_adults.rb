class AddCiToAdults < ActiveRecord::Migration
  def change
    add_column :adults, :ci, :integer
  end
end
