class Cliente < ActiveRecord::Base
  def fullname
    "#{nombre} #{apellido}"
  end
end
