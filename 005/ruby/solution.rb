module Euler005

  def min_factor
    n = self.first    # current int to check
    i = self.first    # amount to increment by for next check
    s = self.first+1  # current factor
    # if min_factor([a,b]) = c then c must also be a factor of [a,b,c]
    # so we can then start incrementing by c
    while (s < self.last+1) do
      if (s-1..s).all? { |x| n % x == 0 }
        i = n
        s += 1
      else
        # only increment if we've not matched (because min factor for both 1..5 and 1..6 = 60)
        n += i
      end
    end
    n
  end

end

class Range
  include Euler005
end

if ARGV.size == 0
  ARGV << 1 << 20
elsif ARGV.size == 1
  ARGV.unshift 1
end

puts (ARGV.first.to_i..ARGV.last.to_i).min_factor
