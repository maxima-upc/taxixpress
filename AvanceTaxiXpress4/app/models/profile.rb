class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :servicios
  
  def full_name
      self.nombre + " " + self.apellido
  end
  
  def fullname
    "#{nombre} #{apellido}"
  end

end
