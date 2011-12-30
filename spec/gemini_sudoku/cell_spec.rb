require 'spec_helper'

describe Cell do
  let(:c) { Cell.new(1,2,3) }
  describe "#value" do
    it "returns the value of the cell" do
      c.value.should == 3
    end
  end

  describe "#x" do
    it "returns the x coordinate of the cell" do
      c.x.should == 1
    end
  end

  describe "#y" do
    it "returns the y coordinate of the cell" do
      c.y.should == 2
    end
  end

  describe "#row" do
    it "returns an array of all the cells in this cell's row"
  end

  describe "#col" do
    it "returns an array of all the cells in this cell's column"
  end

end
