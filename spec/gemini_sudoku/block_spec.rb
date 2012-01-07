require 'spec_helper'

describe Block do

  describe "#==" do
    context "when two blocks have the same cells" do
      it "returns true" do
        b1 = Block.new([Cell.new(1,1,1), Cell.new(2,1,2), Cell.new(1,2,3), Cell.new(2,2,4)])
        b2 = Block.new([Cell.new(1,1,1), Cell.new(2,1,2), Cell.new(1,2,3), Cell.new(2,2,4)])

        b1.should == b2
      end
    end
  end

end

