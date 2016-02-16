class Cliente < ActiveRecord::Base
  attr_accessible :apellido, :dni, :email, :movil, :nacimiento, :nombre, :password, :usuario

  def fullname
    "#{nombre} #{apellido}"
  end
end
