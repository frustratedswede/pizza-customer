require './lib/prices'
require 'pry'

class Pizza

  include Prices
  
  attr_reader :size, :type, :crust

  def initialize (size, type, crust)
    @size = size
    @type = type
    @crust = crust
  end

  def full_order
    {size: size, type: type, crust: crust}
  end

  def calculate_price
    self.pizza_prices[:size][self.size.to_sym] + self.pizza_prices[:type][self.type.to_sym] + self.pizza_prices[:crust][self.crust.to_sym]
  end
end