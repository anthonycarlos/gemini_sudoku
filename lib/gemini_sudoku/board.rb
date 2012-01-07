class Board

  def initialize(size=9)
    @size = size
    @rows = (1..size).collect do |x|
      (1..size).collect {|y| Cell.new(x,y)}
    end
  end

  def row(n)
    Row.new((1..@size).map {|i| cell(i, n) })
  end

  def col(n)
    Column.new((1..@size).map {|i| cell(n, i) })
  end

  def size
    @size
  end

  def cell(x,y)
    @rows[x - 1][y - 1]
  end

  def cell=(cell)
    @rows[cell.x - 1][cell.y - 1] = cell
  end

  def cells
    @rows.flatten
  end

  def to_s
    output = ''
    (1..@size).each do |y|
      (1..@size).each do |x|
        output << "#{cell(x,y)} "
      end
      output << "\n"
    end
    output
  end
end
