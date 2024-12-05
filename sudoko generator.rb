$sqnum = Array.new(9) { Array.new(9, 0) } # Initialize a 9x9 matrix

# Fill the matrix with values 9*i + j + 1
for i in 0...9
  for j in 0...9
    $sqnum[i][j] = 9 * i + j + 1
  end
end

# Define the Draw method to print the matrix in a formatted way
def Draw(sqnum)
  puts " _____ _____ _____ _____ _____ _____ _____ _____ _____"
  (0...9).each do |i|
    puts "|     |     |     |     |     |     |     |     |     |"
    row = "|"
    (0...9).each do |j|
      # Align the numbers to make the grid look good for single/double digits
      cell = sqnum[i][j].to_s.center(5)
      row += "#{cell}|"
    end
    puts row
    puts "|_____|_____|_____|_____|_____|_____|_____|_____|_____|"
  end
end

# Call the Draw method
Draw($sqnum)
