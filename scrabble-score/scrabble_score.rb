class Scrabble
  TILES = {
    'A' => 1, 'B' => 3, 'C' => 3,
    'D' => 2, 'E' => 1, 'F' => 4,
    'G' => 2, 'H' => 4, 'I' => 1,
    'J' => 8, 'K' => 5, 'L' => 1,
    'M' => 3, 'N' => 1, 'O' => 1,
    'P' => 3, 'Q' => 10, 'R' => 1,
    'S' => 1, 'T' => 1, 'U' => 1,
    'V' => 4, 'W' => 4, 'X' => 8,
    'Y' => 4, 'Z' => 10
  }
  TILES.default = 0
  TILES.freeze

  def self.score(letters)
    new(letters).score
  end

  private

  attr_reader :letters, :tile_values

  def initialize(letters, tile_values = TILES)
    @letters = letters.to_s.upcase.chars
    @tile_values = tile_values
  end

  public

  def score
    letters.sum { |l| tile_values[l] }
  end
end

if $PROGRAM_NAME == __FILE__
  Hawaiian_Tiles = {
    'A' =>  1, 'N' =>  3,
    'O' =>  2,
    'P' =>  8,
    'E' =>  4,
    'H' =>  6, 'U' =>  5,
    'I' =>  3,
    'W' =>  9,
    'K' =>  2,
    'L' =>  7,
    'M' =>  8
  }

  puts Scrabble.new('Humuhumunukunukuapuaa', tile_values = Hawaiian_Tiles).score
end
