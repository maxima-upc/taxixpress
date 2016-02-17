class Profile < ActiveRecord::Base
  belongs_to :user
  
  def full_name
      self.nombre + " " + self.apellido
  end

end
