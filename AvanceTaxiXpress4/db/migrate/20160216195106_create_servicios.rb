class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :direccionorigen
      t.string :direcciondestino
      t.date :fechaservicio
      t.time :horaservicio
      t.integer :pasajeros
      t.references :cliente, index: true, foreign_key: true
      t.references :precio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
