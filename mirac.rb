puts "f(x) = ax^n + bx + c enter your digits to this function"

puts "enter your digit for a"
i = gets.chomp.to_f
puts "enter your digit for a's fraction"
j = gets.chomp.to_f
a = i / j

system ("clear")

puts "f(x) = #{a}x*n +bx +c"
puts "enter your digit for b"
m = gets.chomp.to_f
puts "enter your digit for b's fraction"
k = gets.chomp.to_f
b = m / k

system ("clear")

puts "f(x) = #{a}x*n +#{b}x +c"
puts "enter your digit for c"
e = gets.chomp.to_f
puts "enter your digit for c's fraction"
l = gets.chomp.to_f
c = e / l

system ("clear")

puts "f(x) = #{a}x*n +#{b}x +#{c}"
puts "enter your digit for n"
n = gets.chomp.to_i

system ("clear")

puts "The function is: f(x) = #{a}x*n +#{b}x +#{c}"

def find_roots(a, b, c)
  delta = (b**2 - 4 * a *c)

  if delta > 0
    root_1 = (-b + Math.sqrt(delta)) / (2 * a)
    root_2 = (-b - Math.sqrt(delta)) / (2 * a)
    roots = [root_1, root_2].sort
    return roots
  elsif delta == 0
    root_1 = -b / (2 * a)
    return [root_1]
  else
    return "no real roots"
  end
end

roots = find_roots(a, b, c)

if roots == "real root not found"
  puts roots
else
  if roots.length == 1
    puts "one root: #{roots[0]}"
  else
    puts "roots: #{roots[0]} and #{roots[1]}"
  end
end

puts "f(x) = #{a}x*n +#{b}x +#{c}"
puts "enter your digit for x"
x = gets.chomp.to_f 

system ("clear")

puts "f(x) = #{a}x*n +#{b}x +#{c}"

fx = a * x ** n + b * x + c
puts "f(x) = #{fx}"