require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'ruby', 'helper')

class Array
  def pythagorean_triplet?
    return self[0]**2 + self[1]**2 == self[2]**2
  end
end

s = (ARGV.size > 0 ? ARGV : [1000]).first.to_i

triplets = []
# because i < j < k, i =< s-3/3
(1..(s-3)/3).each do |i|
  # because i < j < k, i+1 =< j < (s-1-i)/2
  (i+1..(s-1-i)/2).each do |j|
    # k is effectively what's left over from i+j up to s
    k = s - (i + j)
    triplets << [i, j, k] if [i, j, k].pythagorean_triplet?
  end
end

puts triplets.inspect
puts "Product of #{triplets.first.inspect} = #{triplets.first.multiply}" if !triplets.first.nil?
