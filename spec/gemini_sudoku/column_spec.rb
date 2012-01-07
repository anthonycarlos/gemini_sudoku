require 'spec_helper'

describe Column do

  describe "#==" do
    context "when two columns have the same cells" do
      it "returns true" do
        c1 = Column.new([Cell.new(1,1,1), Cell.new(1,2,2)])
        c2 = Column.new([Cell.new(1,1,1), Cell.new(1,2,2)])

        c1.should == c2
      end
    end
  end

end

