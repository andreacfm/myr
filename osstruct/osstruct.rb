require "ostruct"

class MyClass < OpenStruct
  attr_accessor :surname  
end

p instance = MyClass.new

instance.name="Andrea"

p instance.name

instance.surname = "Campolonghi"

p instance.surname
