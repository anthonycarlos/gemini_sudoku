require 'subset'

class Column < Subset

  def ==(c)
    @cells == c.cells
  end

end
