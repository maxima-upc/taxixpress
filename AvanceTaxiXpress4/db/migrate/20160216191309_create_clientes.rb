class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.integer :dni
      t.string :usuario
      t.string :password
      t.string :nombre
      t.string :apellido
      t.integer :movil
      t.date :nacimiento
      t.string :email

      #t.timestamps null: false
    end
  end
end
