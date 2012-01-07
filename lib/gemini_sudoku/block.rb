require 'subset'

class Block < Subset

  def ==(b)
    @cells == b.cells
  end

end
