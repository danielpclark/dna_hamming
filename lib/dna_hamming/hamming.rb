module Hamming
  def self.compute(pair)
    set_strand_position_by_length(pair) unless pair.same?
    count_the_distance(pair)
  end

  module_function
  def self.count_the_distance(pair)
    pair.entries.map(&:chars).inject(:zip).select{|a,b| a!=b}.count
  end

  def self.set_strand_position_by_length(pair)
    pair.swap! if pair.inject{|a,b|a.length>b.length}
  end
end

