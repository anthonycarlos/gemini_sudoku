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

  describe "#==" do
    context "when x, y, and value are ==" do
      it "returns true" do
        c.should == Cell.new(1,2,3)
      end
    end
    context "when any attribute is not ==" do
      it "returns false" do
        c.should_not == Cell.new(1,3,3)
      end
    end
  end

end
