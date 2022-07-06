
# require_relative "board.rb"



class Piece 

    attr_accessor :symbol

    def initialize(color, board, position)
        @color = color
        @position = position
        @board = board
        @symbol = symbol
    end 


    def to_s
       self.symbol 
    end 


    # def empty?
    #     self.position == NullPiece.instance
    # end 


    def valid_moves #needs to come from child, should return an array of valid moves 
        moves.reject{|end_pos| move_into_check?(end_pos)}
 
    end 


    def pos=(val)
        self.position = val
    end 


    def move_into_check?(end_pos)
        test_board = board.dup
        test_board.move_piece!(pos, end_pos)
        test_board.in_check?(color)
    end 

 

end 