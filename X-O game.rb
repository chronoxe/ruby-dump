logical_arr = ['1', '2', '3', '4', '5', '6', '7', '8', '9']
$game_over = false
$userInput = nil
$userchoice = 'X'
$systemchoice = 'O'

def Draw(logical_arr)
    puts " _____ _____ _____ "
    puts "|     |     |     |"
    puts "|  #{logical_arr[0]}  |  #{logical_arr[1]}  |  #{logical_arr[2]}  |"
    puts "|_____|_____|_____|"
    puts "|     |     |     |"
    puts "|  #{logical_arr[3]}  |  #{logical_arr[4]}  |  #{logical_arr[5]}  |"
    puts "|_____|_____|_____|"
    puts "|     |     |     |"
    puts "|  #{logical_arr[6]}  |  #{logical_arr[7]}  |  #{logical_arr[8]}  |"
    puts "|_____|_____|_____|"
end

def logic(logical_arr)
    if  (logical_arr[0] == logical_arr[1] && logical_arr[1] == logical_arr[2]) ||
        (logical_arr[3] == logical_arr[4] && logical_arr[4] == logical_arr[5]) ||
        (logical_arr[6] == logical_arr[7] && logical_arr[7] == logical_arr[8]) ||
        (logical_arr[0] == logical_arr[3] && logical_arr[3] == logical_arr[6]) ||
        (logical_arr[1] == logical_arr[4] && logical_arr[4] == logical_arr[7]) ||
        (logical_arr[2] == logical_arr[5] && logical_arr[5] == logical_arr[8]) ||
        (logical_arr[0] == logical_arr[4] && logical_arr[4] == logical_arr[8]) ||
        (logical_arr[2] == logical_arr[4] && logical_arr[4] == logical_arr[6])
        $game_over = true
    end
end

def user_input(logical_arr)
    validInput = false
    while !validInput
        puts "Which number you want to fill in (1-9): "
        $userInput = gets.to_i
        if ($userInput >= 1 && $userInput <= 9 && logical_arr[$userInput - 1] != 'X' && logical_arr[$userInput - 1] != 'O')
            logical_arr[$userInput - 1] = $userchoice
            validInput = true
        else
            puts "Invalid move, try again."
        end
    end
end

def system_input(logical_arr)
    random_num = rand(0..8)
    while (logical_arr[random_num] == 'X' || logical_arr[random_num] == 'O')
        random_num = rand(0..8)
    end
    logical_arr[random_num] = $systemchoice
end

printf("Enter your preferred character [X / O]: ")
char = gets.chomp.upcase
while char.empty? || (char != 'X' && char != 'O')
    system("clear")
    printf("Enter your preferred character [X / O]: ")
    char = gets.chomp.upcase
end
if char == 'X'
    $userchoice = 'X'  
    $systemchoice = 'O' 
else
    $userchoice = 'O'  
    $systemchoice = 'X' 
end

while !$game_over
    Draw(logical_arr)
    user_input(logical_arr)
    logic(logical_arr)
    break if $game_over
    system_input(logical_arr)
    logic(logical_arr)
    system("clear")
end

Draw(logical_arr)
puts "Game over!"
