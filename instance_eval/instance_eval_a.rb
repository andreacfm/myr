module Andrea  
  
  module My_module
    
    def self.configure
      yield
    end
    
    def self.set(arg)
      puts arg
    end
    
  end  
  
end

#anywhere in my program initilizers
include Andrea

My_module.configure do
  set "my setting"
end  

