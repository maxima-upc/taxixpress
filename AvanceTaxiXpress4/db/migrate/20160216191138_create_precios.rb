class CreatePrecios < ActiveRecord::Migration
  def change
    create_table :precios do |t|
      t.float :precioservicio
      t.references :distrito_origen, index: true, foreign_key: true
      t.references :distrito_destino, index: true, foreign_key: true

      t.timestamps null: false
    end

  end

end
