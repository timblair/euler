module Problem001

  def sum_multiples_of(multi)
    (0..self).inject do |sum, n|
      n.multiple_of?(multi) ? sum += n : sum
    end
  end

  def multiple_of?(multi)
    (multi.instance_of?(Array) ? multi : [multi]).any? { |n| self % n == 0 }
  end

  def sum_divisible_by(num)
    p = self / num
    num*(p*(p+1))/2
  end

end

class Integer
  include Problem001
end

# take total and multiples from the command line, or default if not provided
args = (ARGV.size > 0 ? ARGV : [999, 3, 5])
num = args.shift.to_i

# nice, clean rubyish way of doing the calculation
puts num.sum_multiples_of(args.collect! { |n| n.to_i })

# much (much) more efficient to calculate this way, but not as "clean"
if args.length == 2
  puts num.sum_divisible_by(args.first) + num.sum_divisible_by(args.last) - (num.sum_divisible_by(args.first*args.last))
end
