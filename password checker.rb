$chrasLower = "abcdefghijklmnopqrstuvwxyz".chars     #-> ['a','b',...,'z']
$charsUpper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".chars     #-> ['A','B',...,'Z']
$numbers = "0123456789".chars                        #-> ['0','1',...,'9']
$specials = "!@#$%^&*()_+-=,./|{}[]<>?`~;: ".chars   #-> ['!','@',...,' ']

def lowcheck(pass)
  $chrasLower.any? { |char| pass.include?(char) }
end

def upcheck(pass)
  $charsUpper.any? { |char| pass.include?(char) }
end

def numcheck(pass)
  $numbers.any? { |char| pass.include?(char) }
end

def specialcheck(pass)
  $specials.any? { |char| pass.include?(char) }
end

puts "Enter your password:"
pass = gets.chomp

while !(lowcheck(pass) && upcheck(pass) && numcheck(pass) && specialcheck(pass))
  system("clear")
  missing = []
  missing << "lowercase letter" unless lowcheck(pass)
  missing << "uppercase letter" unless upcheck(pass)
  missing << "number" unless numcheck(pass)
  missing << "special character" unless specialcheck(pass)
  
  puts "Invalid! Your password is missing: #{missing.join(', ')}"
  puts "Re-enter your password:"
  pass = gets.chomp
end

puts "Password is valid!"
