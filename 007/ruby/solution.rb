require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'ruby', 'helper')

module Problem007

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
