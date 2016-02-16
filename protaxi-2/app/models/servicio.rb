class Servicio < ActiveRecord::Base
  attr_accessible :direcciondestino, :direccionorigen, :fechaservicio, :horaservicio, :pasajeros, :cliente_id, :precio_id

  belongs_to :cliente
  belongs_to :precio

  
end
