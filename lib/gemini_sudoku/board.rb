class Board
  attr_reader :cells

  def initialize(side = 9)
    @cells = Array.new(side, Array.new(side))
  end

  def initialize(size=9)
    @size = size
    @rows = (1..size).collect do |i|
      (1..size).collect {|j| Cell.new(i, j)}
    end
  end

  def size
    @size
  end

  def cell(x,y)
    @rows[x][y]
  end

  def cell=(cell)
    @rows[cell.x][cell.y] = cell
  end

  def cells
    @rows.flatten
  end
end
