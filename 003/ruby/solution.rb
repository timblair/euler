module Problem003

  def prime?
    return true if self == 2
    return false if (self < 2 || self % 2 == 0)
    (2..self**0.5+1).each do |n|
      return false if self.to_f % n == 0
    end
    true
  end

  def max_prime_factor
    return self if self.prime?
    (2..self**0.5+1).each do |i|
      return (self/i.to_i).max_prime_factor if self % i == 0
    end
    nil
  end

end

class Integer
  include Problem003
end

puts (ARGV.size > 0 ? ARGV : [600_851_475_143]).first.to_i.max_prime_factor
