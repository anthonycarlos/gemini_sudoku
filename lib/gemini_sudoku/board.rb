class Board

  def initialize(size=9)
    @size = size
    @rows = (1..size).collect do |i|
      Row.new(i, size)
    end
  end

  def size
    @size
  end

  def cell(x,y)
    row(y).column(x)
  end

  def cell=(cell)
    row(cell.y).column = cell
  end

  def cells
    @rows.map(&:cells).flatten
  end

  def row(index)
    @rows[index - 1]
  end

  def col(index)
    @rows.collect{|row| row.column(index)}
  end
end
