class CreateDistritoDestinos < ActiveRecord::Migration
  def change
    create_table :distrito_destinos do |t|
      t.string :nombredistrito

     # t.timestamps
    end
  end
end
