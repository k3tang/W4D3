require_relative "piece.rb"
require_relative "nullpiece.rb"
require_relative "queen.rb"

class Board
   include Enumerable

#    attr_reader :current_board
   attr_accessor :board 

    def initialize
       @board = Array.new(8){Array.new(8) {NullPiece.instance}}
    #    @current_board = @board.populate
    end

    def populate
        @board[1].each_with_index {|_,i| @board[1][i] = Pawn.new(:W,self,[1,i])}
        @board[6].each_with_index {|_,i| @board[6][i] = Pawn.new(:B,self,[6,i])}

    
      
           @board[0][0] = Rook.new(:W,self,[0,0])
           @board[0][1] = Knight.new(:W,self,[0,1])
           @board[0][2] = Bishop.new(:W,self,[0,2])
           @board[0][3] = King.new(:W,self,[0,3])
           @board[0][4] = Queen.new(:W,self,[0,4])
           @board[0][5] = Bishop.new(:W,self,[0,5])
           @board[0][6] = Knight.new(:W,self,[0,6])
            @board[0][7] = Rook.new(:W,self,[0,7])

            @board[7][0] = Rook.new(:B,self,[7,0])
           @board[7][1] = Knight.new(:B,self,[7,1])
           @board[7][2] = Bishop.new(:B,self,[7,2])
           @board[7][3] = King.new(:B,self,[7,3])
           @board[7][4] = Queen.new(:B,self,[7,4])
           @board[7][5] = Bishop.new(:B,self,[7,5])
           @board[7][6] = Knight.new(:B,self,[7,6])
            @board[7][7] = Rook.new(:B,self,[7,7])

            return @board
            
    end

    def [](pos)
        
        @board[pos[0]][pos[-1]]
    end

    def []=(pos,val)

       @board[pos[0]][pos[-1]] = val
    end

    def move_piece(start_pos,end_pos)

        # unless valid_moves.include?(end_pos) && !self.board[start_pos].is_a?(NullPiece)
        #     raise "Uh oh, you can't move there"
        # end

        piece = self[start_pos]
       self[end_pos] = piece
       self[start_pos] = NullPiece.instance

    end


    def empty?(pos)
            return true if self[pos] == NullPiece.instance
            false
    end


    def each(&prc)
        count = 0
        while count < self.length
          prc.call(self[count])
          count += 1
        end
        self
    end

    def render
        @board.each do |row|
            print "\n"
            row.each { |square|  print square.symbol }
            
        end
        return true
    end
  
    
 
end 


#compute move method pass in the object type  and that information from queen. 
#check if move is valid or not 
require "byebug"
# debugger
b = Board.new
b.populate
b.render
puts 
b.move_piece([1,0],[5,0])
b.render
puts 
puts b[[0,0]]

rook = b[[0,0]]
print rook.position
puts rook.color
p rook.moves

b.move_piece([0,4],[3,4])
puts b.render
queen  = b[[3,4]]
p queen.moves


