# Three hashes describing items in my store's inventory

item1 = {
  :item => "grill",
  :color => "silver",
  :price => 99.99,
  :brand => "Grillmaster"
}

item2 = {
  :item => "twinkies",
  :color => "yellow",
  :price => 2.99,
  :brand => "Hostess"
}

item3 = {
  item: "socks, 4-pack",
  color: "white",
  price: 9.99,
  brand: "Hane's"
}

class Item
  def initialize(input_item, input_color, input_price, input_brand)
    @item = input_item
    @color = input_color
    @price = input_price
    @brand = input_brand
  end

  def item
    @item
  end

  def color
    @color
  end

  def price
    @price
  end

  def brand
    @brand
  end

  def set_price=(input_price)
    @price = input_price
  end

  def print_info
    puts "#{color} #{brand} #{item} costs #{price}."
  end

end

item1 = Item.new("grill", "silver", 99.99, "Grillmaster")
item2 = Item.new("twinkie", "yellow", 2.99, "Hostess")
item3 = Item.new("sock, 4-pack", "white", 9.99, "Hane's")

puts item1.item
puts item2.color
puts item3.brand
puts item3.price
item3.set_price = 8.99
puts item3.price
puts item1.print_info