require 'benchmark'

Benchmark.bm do |b|

  b.report("Exhaustive   ") do
    m = 0
    (100..999).each do |i|
      (100..999).each do |j|
        c = i*j
        m = c if c.to_s == c.to_s.reverse && c > m
      end
    end
  end

  b.report("No Duplicates") do
    m = 0
    (100..999).each do |i|
      (i..999).each do |j|
        c = i*j
        m = c if c.to_s == c.to_s.reverse && c > m
      end
    end
  end

  b.report("Countdown    ") do
    m = 0
    (-999..-100).each do |i|
      (-999..i).each do |j|
        break if i*j < m
        c = i*j
        m = c if c.to_s == c.to_s.reverse && c > m
      end
    end
  end

end

puts "906609"
