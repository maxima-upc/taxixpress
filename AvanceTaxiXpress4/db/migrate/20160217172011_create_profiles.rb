class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :nombre
      t.string :apellido
      t.integer :dni
      t.integer :movil
      t.date :nacimiento
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
