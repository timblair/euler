module Problem001

  def sum_multiples_of(multi)
    (0..self).inject do |sum, n|
      n.multiple_of?(multi) ? sum += n : sum
    end
  end

  def multiple_of?(multi)
    (multi.instance_of?(Array) ? multi : [multi]).any? { |n| self % n == 0 }
  end

end

class Integer
  include Problem001
end

# take total and multiples from the command line, or default if not provided
args = (ARGV.size > 0 ? ARGV : [999, 3, 5])
puts args.shift.to_i.sum_multiples_of(args.collect! { |n| n.to_i })
