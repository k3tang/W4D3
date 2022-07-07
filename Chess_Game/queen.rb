require_relative "piece.rb"
require_relative "slideable.rb"

class Queen < Piece
    attr_reader :symbol , :position , :color
    include Slideable
      def initialize(color, board, position)
        super(color, board, position)
         color == :W ? @symbol = "\u2655" : @symbol = "\u265B"
    end 

   
     def moves
      find_valid_moves(all_diagonal_moves)
     end
    

end 


class Rook < Piece
     attr_reader :symbol , :position , :color
     include Slideable
    def initialize(color, board, position)
        super(color, board, position)
         color == :W ? @symbol = "\u2656"  : @symbol = "\u265C"
    end 

    def moves
      find_valid_moves(all_horizontal_moves)
    end

end 



class Pawn < Piece
     attr_reader :symbol , :position , :color

      def initialize(color, board, position)
        super(color, board, position)
         color == :W ? @symbol = "\u2659" : @symbol = "\u265F"
      end 

      def moves
          # moves = []
          # if self.position[0] == 1 && self.color == :W
          #      moves << self.
          # end

      end

end 


class Knight < Piece
     attr_reader :symbol , :position , :color
    def initialize(color, board, position)
        super(color, board, position)
         color == :W ? @symbol = "\u2658" : @symbol = "\u265E"
    end 

end 


class King < Piece
     attr_reader :symbol , :position , :color

     def initialize(color, board, position)
        super(color, board, position)
         color == :W ? @symbol = "\u2654" : @symbol = "\u265A"
    end 

    def moves
     options = [[1,1] ,[-1,-1],[-1 ,1],[1,-1],[0,1],[-1,0],[1,0],[0,-1]]
     moves =[]
    options.each do |move|
            moves << self.position.zip(move).map(&:sum)
     end
      moves
     end

end 


class Bishop < Piece
     attr_reader :symbol , :position , :color
     include Slideable
    def initialize(color, board, position)
        super(color, board, position)
         color == :W ? @symbol = "\u2657" : @symbol = "\u265D"
    end 

    def moves
     moves_dir
    end

end 