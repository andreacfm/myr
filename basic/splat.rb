def function *args
  p args.inject{|result,el| result << el}
  p Hash[*args]
end  

function :a => "value", :b => "value"  
  