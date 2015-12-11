module DNAHamming
  class Pair < Struct.new(:first, :second)
    def same?
      inject(:eql?)
    end

    def swap!
      members.zip(entries.reverse) {|a,b| self[a] = b}
    end
  end
end

