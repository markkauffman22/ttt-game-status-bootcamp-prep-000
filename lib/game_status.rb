<<<<<<< HEAD
# THIS PASSES ALL THE TESTS ...
=======
>>>>>>> 9d5a568cf2e3f287d0b792675f0674be07ff0d02

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # Left column
  [1,4,7],  # Middle column
  [2,5,8],  # Right column
  [0,4,8],  # Diaonal 1
  [2,4,6]  # Diagonal 2
]

def empty?(board)
    board.all? { |pos| (pos.nil? || pos == " " || pos == ""  )} # if these are always true, the board is empty, return true
<<<<<<< HEAD
end

def won?(board)
  winner = false
  pos_winners = []
  return false if empty?(board)  # Nice Short-Cut!!

=======
end

def full?(board)
  # returns true for a FULL board (a draw)
  # the all? method returns true if the block never returns false or nil for any element passed to it:
  
  empty_spot = board.any? { |pos| (pos.nil? || pos == " " || pos == "")}  # if either of these are true, the spot is empty
  if empty_spot
    return false
  else 
    return true
  end  
end

def won?(board)
  # return false on empty board
  # return false/nil if there is no win combination 
  # return false/nil if there is a draw
  # return the win_combo as an array if there is a win
  
  return false if empty?(board)  # Nice Short-Cut!!

  
  # return the winning combination indexes as an array if there is a win.
  
  # The all? method returns true if the block never returns false or nil for any element passed to it:
  # first indwill be 
  
>>>>>>> 9d5a568cf2e3f287d0b792675f0674be07ff0d02
  pos_winners = []
  WIN_COMBINATIONS.each do |win_combo|  
      all_3_taken = false

      all_3_taken = win_combo.all? do |index|   
        position_taken?(board, index)       # true if all indexes are occupied.
      end
      if all_3_taken 
        pos_winners.push(win_combo)
      end
  end  # WIN_COMBINATIONS.each loop end  
  
  # Now have an array with the possible winners ...  
<<<<<<< HEAD
    if pos_winners.length == 0   # no winner, BAIL
      puts "NO WINNER!"
      return pos_winners[98]  # returning nil, duh. 
    end

  # Now see if any pos_winner is "ALL THE SAME" and return it.  
  winning_combo = false
  pos_winners.each do |pos_combo|
    if 
      (board[pos_combo[0]] == board[pos_combo[1]]) && (board[pos_combo[0]] == board[pos_combo[2]])
      winning_combo = pos_combo
    end  
  end # pos_winners each loop
  return winning_combo
=======
  
  # no winner, BAIL, return nil per test!!!
    if pos_winners.length == 0 
      puts "NO WINNER!"
      return pos_winners[98] # returning nil, duh. 
    end

  # Now see if any pos_winner is "ALL THE SAME" and return it.  
  # That's it !!!
  pos_winners.each do |pos_combo|
    print "--------------->"
    print pos_combo
    if 
      pos_combo.all? {|i| board[i] = board[pos_combo[0]]}   # Yay they are the same!!
      puts "WINNER IS: "
      print board[2], board[5], board[8]
      puts "---------------"
      print board
      print pos_combo
      return pos_combo
    end
  end # pos_winners each loop
  
  ### return false if draw?(board)   # Nice 'if...end' Short-cut !!
  
>>>>>>> 9d5a568cf2e3f287d0b792675f0674be07ff0d02
end  # this is the won? function end

def winner(board)
  win_combo = won?(board)
  winner = win_combo[0] #The first value will be "X" or "O" - the WINNER!
  return winner  
end  

def full?(board)
  board.none? {|this_pos| (this_pos.nil? || this_pos == " " || this_pos == "")} 
end

def draw?(board)
<<<<<<< HEAD
=======
  # returns true if the board has not won but           is full, 
  # false if the board is         not won and the board is NOT full, 
  # false if the board is won
  
>>>>>>> 9d5a568cf2e3f287d0b792675f0674be07ff0d02
  return true if !(won?(board)) && full?(board)
  return false if !(won?(board)) && !(full?(board))
  return false if won?(board)
end

def over?(board)
  if full?(board) ||  won?(board)  #returns true for a WIN OR Dra
    return true
  end
  return false
end

def winner(board)
  if won?(board)
    win_combo = won?(board)
    winner = board[win_combo[0]]   #The first value will be "X" or "O" - the WINNER!
    puts "WINNER from #winner IS: "
    winner
    return winner
  end
end  

#          0    1    2    3    4    5    6    7    8
<<<<<<< HEAD
#board = ["X", " ", "O", " ", "X", "O", " ", " ", "X"] # left diagonal X

#out = won?(board)
#puts out
=======
#board = ["X", "X", "X", "O", "O", " ", " ", " ", " "] # top row
#board = ["X", " ", "O", " ", "X", "O", " ", " ", "X"] # right column
#board = [" ", "", "", " ", " ", " ", " ", " ", " "]  # mixed Empty board
#board = ["X", "O", " ", " ", " ", " ", " ", "O", "X"] # no winner
board = ["X", "X", "X", "O", "X", "O", "O", "O", "X"] # diagonal in #draw? test
puts "START"
won?(board)
>>>>>>> 9d5a568cf2e3f287d0b792675f0674be07ff0d02
