class MyClass
  def initialize
    @var = 1 
  end 
  
  def my_var
    @var
  end
end

obj = MyClass.new

obj.instance_eval do 
  @var = 3
end

p obj.my_var