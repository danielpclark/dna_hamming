require 'test_helper'

describe DNAHamming do
  it "is versioned" do
    refute_nil ::DNAHamming::VERSION
  end

  it "computes difference in dna pair" do
    pair = DNAPair["ACTG","ACTG"]
    _(Hamming.compute(pair)).must_equal 0
    pair = DNAPair["CATG","ACTG"]
    _(Hamming.compute(pair)).must_equal 2 
    pair = DNAPair["CTAG","ACTG"]
    _(Hamming.compute(pair)).must_equal 3
    pair = DNAPair["CTGA","ACTG"] 
    _(Hamming.compute(pair)).must_equal 4
    pair = DNAPair["ACTG".reverse,"ACTG"]
    _(Hamming.compute(pair)).must_equal 4
  end

  it "knows sameness" do
    pair = DNAPair["ACTG","ACTG"]
    _(pair).must_be :same?
    pair = DNAPair["CTAG","ACTG"]
    _(pair).wont_be :same?
  end
end
