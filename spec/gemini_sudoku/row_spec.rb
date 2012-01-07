require 'spec_helper'

describe Row do

  describe "#==" do
    context "when two rows have the same cells" do
      it "returns true" do
        r1 = Row.new([Cell.new(1,1,1), Cell.new(2,1,2)])
        r2 = Row.new([Cell.new(1,1,1), Cell.new(2,1,2)])

        r1.should == r2
      end
    end
  end

end
