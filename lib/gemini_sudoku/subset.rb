class Subset

  def initialize(cells)
    @cells = cells
  end

  def valid?
    non_nil_values = @cells.inject([]) {|memo,c| c.value.nil? ? memo : memo << c.value }
    non_nil_values.size == non_nil_values.uniq.size
  end

end
