class CreateDistritoOrigens < ActiveRecord::Migration
  def change
    create_table :distrito_origens do |t|
      t.string :nombredistrito

    #  t.timestamps
    end
  end
end
