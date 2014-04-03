class DataTime
  def initialize
    @array = []
    40.times do
        @array << rand((Time.now - 60*60*24*365)..Time.now).strftime("%d.%m #{rand(-30..30)}")
    end
  end

  def array
   @array
  end
end
