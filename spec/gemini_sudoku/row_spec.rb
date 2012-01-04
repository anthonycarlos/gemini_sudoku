require 'spec_helper'

describe Row do
  let(:r) { Row.new(2,9) }

  it "given an x-coordinate and size returns an array of size with cells" do
    r = Row.new(2, 9)
    r.cells.map(&:x).should == (1..9).map{|i| Cell.new(2, i, nil).x}
    r.cells.map(&:y).should == (1..9).map{|i| Cell.new(2, i, nil).y}
    r.cells.map(&:value).should == (1..9).map{|i| Cell.new(2, i, nil).value}
  end

  describe "#column=" do
    context "when y coordinate matches" do
      it "sets the cell" do
        r.column = Cell.new(1, 2, 3)

        r.column(1).value.should == 3
      end
    end

    context "when y coordinate does not match" do
      it "does nothing" do
        r.column = Cell.new(2, 3, 4)

        r.column(1).value.should be_nil
      end
    end
  end

  describe "column" do
    let(:c) { Cell.new(1, 2, 3) }

    context "when the index is within the row size" do
      it "returns the cell for that index" do
        r.column = c
        r.column(1).should == c
      end
    end

    context "when y coordinate does not match" do
      it "raises an IndexError" do
        r.column = c

        expect{ r.column(10) }.to raise_error(IndexError)
      end

    end
  end
end
