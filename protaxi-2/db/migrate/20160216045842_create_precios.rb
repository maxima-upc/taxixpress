class CreatePrecios < ActiveRecord::Migration
  def change
    create_table :precios do |t|
      t.float :precioservicio
      t.references :distrito_origen
      t.references :distrito_destino

      t.timestamps
    end
    add_index :precios, :distrito_origen_id
    add_index :precios, :distrito_destino_id
  end
end
