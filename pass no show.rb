require 'io/console'

puts "Enter your password (it won't be displayed):"
pass = ""
show = "*"

loop do
  input = STDIN.noecho(&:getch) 
  
 
  if input == "\r" || input == "\n"
    break
  elsif input == "\b" || input == "\x7F" 
    if pass.length > 0
      pass.chop!
      print "\b \b" 
    end
  else
    pass << input 
    print show 
  end
end

puts "\nPassword entered successfully."
puts pass