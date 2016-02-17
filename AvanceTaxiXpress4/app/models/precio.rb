class Precio < ActiveRecord::Base
  belongs_to :distrito_origen
  belongs_to :distrito_destino
  def tarifa   
   "De: #{distrito_origen.nombredistrito} a: #{distrito_destino.nombredistrito} => S/. #{precioservicio} "
  end
end
