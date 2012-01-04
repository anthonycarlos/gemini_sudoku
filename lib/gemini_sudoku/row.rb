class Row
  def initialize(y, size)
    @y = y
    @cells = (1..size).collect{|i| Cell.new(y, i)}
  end

  def cells
    @cells
  end

  def column=(cell)
    @cells[cell.x - 1] = cell if cell.y == @y
  end

  def column(index)
    @cells.fetch(index - 1)
  end
end
