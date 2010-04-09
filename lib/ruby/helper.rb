module EulerHelper

  module Integer
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
  end

  module Array
    def sum
      inject(0) { |s,x| s + x }
    end

    # here we can't just use "product" as this method name because that already
    # exists to calculate cartesian products ... stupid method names
    def multiply
      inject(1) { |p,x| p * x }
    end
  end

end

class Integer
  include EulerHelper::Integer
end

class Array
  include EulerHelper::Array
end
