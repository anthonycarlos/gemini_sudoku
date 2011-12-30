require 'spec_helper'

describe Board do

  it "contains cells" do
    Board.new.cells.should_not be_empty
  end

  describe "#new" do
    context "with no parameters" do
      it "creates a square board 9 cells on a side" do
        cells = Board.new.cells
        cells.length.should == 9
        cells.each{|row| row.length.should == 9}
      end
    end
  end
end
