def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]}"
end

def valid_move?(board,index)
  if(board.length<index)
      return false
  end
  if (board[index]!="X" || board[index]!="O")
    return false
  end
  return true
end

def move(board,index,token="X")
  board[index]=token
end

def turn(board)
  puts "Please enter 1-9:"
  getIndex =input_to_index(gets.strip)
  isValid = valid_move?(board,getIndex)
  if isValid
    move(board,getIndex)
  end
  else
    turn(board)

end

def input_to_index(position)
  return position.to_i-1
end
