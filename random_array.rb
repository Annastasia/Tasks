class RandomArray
  def initialize
    @array = []
    4.times do
      b = []
      4.times do
        b << rand(-10 .. 10)
      end
      @array << b
    end
  end

  def array
    @array
  end

  def add_negatives
    sum = 0
    @array.flatten.each do |el|
      if el < 0
        sum = sum + el
        puts el
      end
    end
    sum
  end
end
