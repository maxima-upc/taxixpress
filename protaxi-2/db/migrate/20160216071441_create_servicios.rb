class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :direccionorigen
      t.string :direcciondestino
      t.date :fechaservicio
      t.time :horaservicio
      t.integer :pasajeros
      t.references :cliente
      t.references :precio

      t.timestamps
    end
    add_index :servicios, :cliente_id
    add_index :servicios, :precio_id
  end
end
