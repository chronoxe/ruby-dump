def sgn(x)
  if x > 0
    1
  elsif x < 0
    -1
  else
    0
  end
end
def find_roots(a, b, c)
  delta = (b**2 - 4 * a * c)
  if delta > 0
    root_1 = (-b + Math.sqrt(delta)) / (2 * a)
    root_2 = (-b - Math.sqrt(delta)) / (2 * a)
    roots_array = [root_1, root_2].sort
    puts "The function #{a}x^2 + #{b}x + #{c} has roots at points (#{roots_array[0]},0) and (#{roots_array[1]},0)"
  elsif delta == 0
    root_1 = (-b) / (2 * a)
    puts "The function #{a}x^2 + #{b}x + #{c} has a double root at the point (#{root_1},0)"
  else
    puts "The function #{a}x^2 + #{b}x + #{c} has no real roots"
  end
end
def input_check(a, b, c, x0)
  ans = a * x0**2 + b * x0 + c
  return ans
end
def find_derivative(a, b)
  puts "#{2 * a}x + #{b}"
end
def find_tangent_eq(a, b, c, x0)
  y0 = input_check(a, b, c, x0)
  slope = 2 * a * x0 + b
  intercept = y0 - slope * x0
  puts "The tangent equation at x=#{x0} is: y = #{slope}x + #{intercept}"
end
def find_normal_eq(a, b, c, x0)
  y0 = input_check(a, b, c, x0)
  slope = -(1.0 / (2 * a * x0 + b))
  intercept = y0 - slope * x0
  puts "The normal equation at x=#{x0} is: y = #{slope}x + #{intercept}"
end
def find_sign(a, b, c)
  delta = (b**2 - 4 * a * c)
  if delta > 0 && sgn(a) == 1
    root_1 = (-b + Math.sqrt(delta)) / (2 * a)
    root_2 = (-b - Math.sqrt(delta)) / (2 * a)
    roots_array = [root_1, root_2].sort
    puts "At (-inf, #{roots_array[0]}) U (#{roots_array[1]}, inf), the function is positive valued."
  elsif delta > 0 && sgn(a) == -1
    root_1 = (-b + Math.sqrt(delta)) / (2 * a)
    root_2 = (-b - Math.sqrt(delta)) / (2 * a)
    roots_array = [root_1, root_2].sort
    puts "At (-inf, #{roots_array[0]}) U (#{roots_array[1]}, inf), the function is negative valued."
  elsif delta == 0 && sgn(a) == 1
    root_1 = (-b) / (2 * a)
    puts "At R-{#{root_1}}, the function is positive valued."
  elsif delta == 0 && sgn(a) == -1
    root_1 = (-b) / (2 * a)
    puts "At R-{#{root_1}}, the function is negative valued."
  elsif delta < 0 && sgn(a) == 1
    puts "The function is positive valued across all R."
  elsif delta < 0 && sgn(a) == -1
    puts "The function is negative valued across all R."
  end
end
puts "Enter a in ax^2 + bx + c"
a = gets.to_f
system("clear")
puts "Enter b in ax^2 + bx + c"
b = gets.to_f
system("clear")
puts "Enter c in ax^2 + bx + c"
c = gets.to_f
system("clear")
puts "Enter your desired operation"
puts "Find roots [1]"
puts "Input check [2]"
puts "Derivative [3]"
puts "Tangent equation [4]"
puts "Normal equation [5]"
puts "Function sign [6]"
input = gets.to_i
system("clear")
case input
when 1
  find_roots(a, b, c)
when 2
  puts "Enter x0 for input check:"
  x0 = gets.to_f
  puts "The function value at x=#{x0} is #{input_check(a, b, c, x0)}"
when 3
  find_derivative(a, b)
when 4
  puts "Enter x0 for tangent equation:"
  x0 = gets.to_f
  find_tangent_eq(a, b, c, x0)
when 5
  puts "Enter x0 for normal equation:"
  x0 = gets.to_f
  find_normal_eq(a, b, c, x0)
when 6
  find_sign(a, b, c)
else
  puts "Wrong input!"
end