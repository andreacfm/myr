class A
  
  def self.load
    @@nome = "gk"
    @cognome = "Pace"
  end
  
  def self.cognome
    @cognome
  end  
  
  def nome
    @@nome
  end
  
  def cognome_2
    @cognome
  end
  
end

A.load

puts A.cognome

a = A.new
puts a.nome
puts a.cognome_2



