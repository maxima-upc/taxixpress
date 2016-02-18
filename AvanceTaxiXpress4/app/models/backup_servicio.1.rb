class Servicio < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :precio
end
