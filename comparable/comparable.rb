class Person
  
  include Comparable  
  attr_reader :name   
  
  def initialize(name)
    @name = name
  end
  
  def <=> other
    self.name <=> other.name
  end
  
end

p1 = Person.new 'Andrea'
p2 = Person.new 'Fabio'
p3 = Person.new 'Luigi'

p p1 < p2 #true
p p2 < p1 #false

[p2,p3,p1].sort #[#<Person:0x104f09d80 @name="Andrea">, #<Person:0x104f09d30 @name="Fabio">, #<Person:0x104f09ce0 @name="Luigi">]

class PersonEnumerator
  include Enumerable  
  attr_reader :persons
  
  def initialize(persons)
    @persons = persons    
  end
  
  def each &block  
    @persons.each do |person|
      if block_given?
        block.call person
      else  
        yield person
      end
    end  
  end
  
end


en = PersonEnumerator.new [p1,p2,p3]
p en.find {|person| person.name == 'Andrea'} #<Person:0x10e61d4d8 @name="Andrea">


