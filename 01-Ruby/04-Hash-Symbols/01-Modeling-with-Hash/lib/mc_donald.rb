def poor_calories_counter(main, side, beverage)
  order = {
    "Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese" => 130,
    "French fries" => 130,
    "Potatoes" => 130,
    "Coca" => 160,
    "Sprite" => 170
  }

  order[main] + order[side] + order[beverage]

end



def calories_counter(*orders)
  calories = 0

  menu = {
    "Cheese Burger" => 290,
    "Big Mac" => 300,
    "Mc Bacon" => 400,
    "Royal Cheese" => 130,
    "French fries" => 130,
    "Potatoes" => 130,
    "Coca" => 160,
    "Sprite" => 170
  }

  orders.each do |dish|
    calories = calories + menu[dish]
  end

  #TODO: return number of calories for a less constrained order
  calories

end










