require 'subset'

class Row < Subset

  def ==(r)
    @cells == r.cells
  end

end
