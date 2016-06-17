#Sopa de letras
"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"
"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"
"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"

class Board
  @@boards_templates = [[["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"],
                        [["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"],
                        [["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]]
  @@abc = ("A".."Z").map{|letter| letter}
  @@resp = []

  def initialize
    complete_board!
  end

  def to_s
    @@resp.each do |board|
      board = board.split("")
      for i in 0...board.length
        print board[i]
        puts if i % 5 == 0
      end
      puts 
    end
  end

  private

  def complete_board!
    @@boards_templates.each do |arr, board|
      g = board.split("").map{|letter| (letter == "X")? @@abc[rand(1..26)] : letter}
      @@resp << g.join
    end
  end
end

board = Board.new
puts board