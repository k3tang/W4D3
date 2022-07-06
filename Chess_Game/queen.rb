require_relative "piece.rb"

class Queen < Piece
    attr_reader :symbol
    # include Slideable
      def initialize(color, board, position)
        super(color, board, position)
         color == :W ? @symbol = "\u2655" : @symbol = "\u265B"
    end 

end 


class Rook < Piece
     attr_reader :symbol
    #  include Slideable
    def initialize(color, board, position)
        super(color, board, position)
         color == :W ? @symbol = "\u2656"  : @symbol = "\u265C"
    end 

end 



class Pawn < Piece
     attr_reader :symbol

      def initialize(color, board, position)
        super(color, board, position)
         color == :W ? @symbol = "\u2659" : @symbol = "\u265F"
      end 

end 


class Knight < Piece
     attr_reader :symbol
    def initialize(color, board, position)
        super(color, board, position)
         color == :W ? @symbol = "\u2658" : @symbol = "\u265E"
    end 

end 


class King < Piece
     attr_reader :symbol

     def initialize(color, board, position)
        super(color, board, position)
         color == :W ? @symbol = "\u2654" : @symbol = "\u265A"
    end 

end 


class Bishop < Piece
     attr_reader :symbol
    #  include Slideable
    def initialize(color, board, position)
        super(color, board, position)
         color == :W ? @symbol = "\u2657" : @symbol = "\u265D"
    end 

end 