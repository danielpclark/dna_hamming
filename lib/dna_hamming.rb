require "dna_hamming/version"
require "dna_hamming/hamming"
require "dna_hamming/pair"

module DNAHamming
  ::DNAPair = ->a,b{Pair.new(a, b)}
end
