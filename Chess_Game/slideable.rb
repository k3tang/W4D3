

module Slideable

       HORIZONTAL_DIRS = [[0,1],[-1,0],[1,0],[0,-1]]
       DIAGONAL_DIRS = [[1,1] ,[-1,-1],[-1 ,1],[1,-1]]


       def valid_move?(option)
        if  @board.empty?(option)
          return 1
        elsif @board[option].color == self.color || @board[option].nil?
            return -1
          else
            return 0
        end
      
       end
require "byebug"
       def find_valid_moves(arr)
        final_arr = []
        # debugger
         all_diagonal_moves.each do |row|
            final_arr << deleter(row)
            end
            return final_arr.flatten(2)
       end

 def deleter(row)
      newrow = []
      row.each_with_index do |pos,i|
        case valid_move?(pos)
        when -1
          return newrow << row[0...i]
        when 0
          return newrow << row[0..i]
        end
      end
    end

def all_horizontal_moves
      moves = []
      HORIZONTAL_DIRS.each do |move|
            count = 0
            subzip = [self.position]
            while count < 8
            option = subzip[-1].zip(move).map(&:sum)
            subzip << option
            count +=1
            end
            moves << subzip[1..-1]
        end
      moves
       end

def all_diagonal_moves
      moves = []
      DIAGONAL_DIRS.each do |move|
            count = 0
            subzip = [self.position]
            while count < 8
            option = subzip[-1].zip(move).map(&:sum)
            subzip << option
            count +=1
            end
            moves << subzip[1..-1]
        end
        moves
       end

end

