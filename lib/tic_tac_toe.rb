WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [0,4,8],
  [2,4,6],
  [1,4,7],
  [2,5,8]
]

def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
input.to_i - 1
end

def move(array, index, player = "X")
  array[index] = player
end

# code your #position_taken? method here!
def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] ==""
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == true
    return false
  elsif index.between?(0, 8)
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index) == true
      move(board, index, "X")
      display_board(board)
    else
      input = gets.strip
      index = input_to_index(input)
      valid_move?(board, index)
      puts "Please enter 1-9:"
    end
end

def turn_count(board)
  counter = 0

  board.each do |cell|
    if cell == "X" || cell == "O"
      counter += 1
    end
  end

  counter
end

def current_player(board)
  if turn_count(board)%2==0
    "X"
  else
    "O"
  end
end
