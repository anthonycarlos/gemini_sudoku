require 'spec_helper'

describe Board do
  let(:c1) { Cell.new(1,1,1) }
  let(:c2) { Cell.new(2,1,2) }
  let(:c3) { Cell.new(3,1,3) }
  let(:c4) { Cell.new(1,2,4) }
  let(:c5) { Cell.new(2,2,5) }
  let(:c6) { Cell.new(3,2,6) }
  let(:c7) { Cell.new(1,3,7) }
  let(:c8) { Cell.new(2,3,8) }
  let(:c9) { Cell.new(3,3,9) }
  let(:cells) { [c1, c2, c3, c4, c5, c6, c7, c8, c9] }
  let(:board) do
    b = Board.new(3)
    cells.each {|c| b.cell = c }
    b
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
    it "returns the nth row" do
      board.row(1).should == Row.new([c1, c2, c3])
      board.row(2).should == Row.new([c4, c5, c6])
      board.row(3).should == Row.new([c7, c8, c9])
    end
  end

  describe "#col(n)" do
    it "returns the nth column" do
      board.col(1).should == Column.new([c1, c4, c7])
      board.col(2).should == Column.new([c2, c5, c8])
      board.col(3).should == Column.new([c3, c6, c9])
    end
  end

end
