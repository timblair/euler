require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'ruby', 'helper')

module Problem003

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
