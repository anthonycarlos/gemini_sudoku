class Board
  attr_reader :cells

  def initialize(side = 9)
    @cells = Array.new(side, Array.new(side))
  end

end
