require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'ruby', 'helper')

module Problem002

  def to_fibonacci
    return [] if self < 1
    seq = [1,1]
    while seq.last < self
      seq.push(seq[-1] + seq[-2])
    end
    seq.pop
    seq.shift
    seq
  end

end

class Integer
  include Problem002
end

# calculate Fibonacci sequence then sum all the even numbers
puts 4_000_000.to_fibonacci.reject! {|i| i % 2 != 0}.sum
