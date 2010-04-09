module Problem007

  def prime?
    return true if self == 2
    return false if (self < 2 || self % 2 == 0)
    return true if self < 9
    return false if (self % 3 == 0)
    r = (self**0.5).floor
    f = 5
    while (f <= r) do
      return false if self % f == 0
      return false if self % (f+2) == 0
      f += 6
    end
    true
  end

  # returns the nth prime (e.g. 46.prime gives the 46th prime number => 199)
  def prime
    return nil if self < 1
    return 2 if self == 1
    p = 1
    i = 1
    while p < self
      i += 2
      p += 1 if i.prime?
    end
    i
  end

end

class Integer
  include Problem007
end

puts (ARGV.size > 0 ? ARGV : [10001]).first.to_i.prime
