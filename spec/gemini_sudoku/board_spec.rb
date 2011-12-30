require 'spec_helper'

describe Board do

  it "contains cells" do
    Board.new.cells.should_not be_empty
  end

  describe "#new" do
    context "with no parameters" do
      it "creates a square board 9 cells on a side" do
        b = Board.new
        b.size.should == 9
      end
    end
    context "with a parameter" do
      it "creates a square board with parameter number of cells on a side" do
        b = Board.new(4)
        b.size.should == 4
      end
    end
    it "initializes all cell values to nil" do
      b = Board.new
      b.cells.all?{|c| c.value.nil?}.should be_true
    end
  end

  describe "#size" do
    it "returns the number of cells on a side" do
      b = Board.new(4)
      b.size.should == 4
    end
  end

  describe "#cells" do
    it "returns an array of every cell on the board" do
      b1 = Board.new(4)
      b1.cells.size.should == 16

      b2 = Board.new(9)
      b2.cells.size.should == 81
    end
  end

  describe "#cell=" do
    it "sets the cell" do
      c = Cell.new(3,5,9)
      b = Board.new
      b.cell = c

      b.cell(3,5).value.should == 9
    end
  end

  describe "#cell(x,y)" do
    it "returns the value of the cell at an x and y coordinate" do
      c = Cell.new(4,6,8)
      b = Board.new
      b.cell = c

      b.cell(4,6).value.should == 8
    end
  end

  describe "#row(n)" do
    it "returns the nth row"
  end

  describe "#col(n)" do
    it "returns the nth column"
  end

end
