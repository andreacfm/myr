#gets add a newline after any variable the memorize
print "What is your name? "
$stdout.flush
name = gets
puts 'Hi ' + name + '!!!' + name

# => HI name
# !!!


#chomp does not allow gets to add a new line after the variable that memorize
print "What is your name? "
$stdout.flush
name = gets.chomp
puts 'Hi ' + name + '!!!' + name

#=> Hi name!!!