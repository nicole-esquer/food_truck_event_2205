class FoodTruck
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)
  end

  def check_stock(item)
    if @inventory.include?(item)
      inventory[item]
    else
      0
    end
  end

  def stock(item, count)
    @inventory[item] += count
  end

end
