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
