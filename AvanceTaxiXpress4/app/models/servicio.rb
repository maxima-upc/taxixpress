class Servicio < ActiveRecord::Base
  belongs_to :profile
  belongs_to :precio
end
