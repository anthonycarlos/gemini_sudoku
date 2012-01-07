require 'spec_helper'

describe Subset do

  describe "#valid?" do

    context "when all non-nil enclosed cells have unique values" do

      it "returns true" do
        subset = Subset.new([Cell.new(1,1,1), Cell.new(1,2,2), Cell.new(1,3,nil), Cell.new(1,4,nil)])

        subset.valid?.should be_true
      end

    end

    context "when all enclosed cells have nil values" do

      it "returns true" do
        subset = Subset.new([Cell.new(1,1,nil), Cell.new(2,1,nil)])

        subset.valid?.should be_true
      end

    end

    context "when enclosed cells have repeat integer values" do

      it "returns false" do
        subset = Subset.new([Cell.new(1,1,3), Cell.new(2,2,3)])

        subset.valid?.should be_false
      end

    end

  end

end

