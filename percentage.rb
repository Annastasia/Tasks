class Menu
  attr_accessor :restaurant_menu
  def initialize
    @restaurant_menu =  { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
  end
  def percentage!
      @restaurant_menu.each do |item, price|
        @restaurant_menu[item] = price + (price * 0.1)
      end
  end
  def keys
     @restaurant_menu.keys
  end
end

