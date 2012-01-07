class Cell

  attr_reader :x, :y
  attr_accessor :value

  def initialize(x,y,value=nil)
    @x = x
    @y = y
    @value = value
  end

  def to_s
    "#<Cell [#{x},#{y}]=#{value}>"
  end

  def ==(c)
    @x == c.x && @y == c.y && @value == c.value
  end

end
