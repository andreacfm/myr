module Andrea  
  
  module My_module
    
    def self.configure &block
      instance_eval &block
    end
    
    def self.set(arg)
      puts arg
    end
    
  end  
  
end


include Andrea

My_module.configure do
  set "my setting"
end