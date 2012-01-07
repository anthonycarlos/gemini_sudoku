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

shared_examples_for "a subset whose non-nil enclosed cells have unique values" do |subset|
  it "is valid" do
    subset.valid?.should be_true
  end
end
shared_examples_for "a subset whose enclosed cells all have nil values" do |subset|
  it "is valid" do
    subset.valid?.should be_true
  end
end
shared_examples_for "a subset whose enclosed cells have repeat integer values" do |subset|
  it "is invalid" do
    subset.valid?.should be_false
  end
end

describe Row do
  row1 = Row.new([Cell.new(1,1,1), Cell.new(2,1,2), Cell.new(3,1,nil), Cell.new(4,1,nil)])
  it_behaves_like "a subset whose non-nil enclosed cells have unique values", row1

  row2 = Row.new([Cell.new(1,2,nil), Cell.new(2,2,nil), Cell.new(3,2,nil), Cell.new(4,2,nil)])
  it_behaves_like "a subset whose enclosed cells all have nil values", row2

  row3 = Row.new([Cell.new(1,3,1), Cell.new(2,3,nil), Cell.new(3,3,nil), Cell.new(4,3,1)])
  it_behaves_like "a subset whose enclosed cells have repeat integer values", row3
end

describe Column do
  col1 = Column.new([Cell.new(1,1,nil), Cell.new(1,2,3), Cell.new(1,3,nil), Cell.new(1,4,4)])
  it_behaves_like "a subset whose non-nil enclosed cells have unique values", col1

  col2 = Column.new([Cell.new(2,1,nil), Cell.new(2,2,nil), Cell.new(2,3,nil), Cell.new(2,4,nil)])
  it_behaves_like "a subset whose enclosed cells all have nil values", col2

  col3 = Column.new([Cell.new(3,1,1), Cell.new(3,2,nil), Cell.new(3,3,1), Cell.new(3,4,1)])
  it_behaves_like "a subset whose enclosed cells have repeat integer values", col3
end

describe Block do
  block1 = Block.new([Cell.new(1,1,1), Cell.new(1,2,3), Cell.new(2,1,2), Cell.new(2,2,4)])
  it_behaves_like "a subset whose non-nil enclosed cells have unique values", block1

  block2 = Block.new([Cell.new(1,1,nil), Cell.new(1,2,nil), Cell.new(2,1,nil), Cell.new(2,2,nil)])
  it_behaves_like "a subset whose enclosed cells all have nil values", block2

  block3 = Block.new([Cell.new(1,1,4), Cell.new(1,2,nil), Cell.new(2,1,1), Cell.new(2,2,1)])
  it_behaves_like "a subset whose enclosed cells have repeat integer values", block3
end
