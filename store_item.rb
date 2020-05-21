# Three hashes describing items in my store's inventory

item1 = {
  :item => "grill",
  :type => "appliance",
  :price => 99.99,
  :brand => "Grillmaster"
}

item2 = {
  :item => "twinkies",
  :type => "food",
  :price => 2.99,
  :brand => "Hostess"
}

item3 = {
  item: "socks, 4-pack",
  type: "clothing",
  price: 9.99,
  brand: "Hane's"
}

class Item
  
  attr_reader :item, :type, :price, :brand
  attr_writer :price
  
  def initialize(input_options)
    @item = input_options[:item]
    @type = input_options[:type]
    @price = input_options[:price]
    @brand = input_options[:brand]
  end

  def print_info
    puts "#{brand} #{item} costs #{price}."
  end

end

class Food < Item

  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end

end

item1 = Item.new(item: "grill", type: "appliance", price: 99.99, brand: "Grillmaster")
item2 = Item.new(item: "twinkie", type: "food", price: 2.99, brand: "Hostess")
item3 = Item.new(item: "sock, 4-pack", type: "clothing", price: 9.99, brand: "Hane's")

puts item1.item
puts item2.type
puts item3.brand
puts item3.price
item3.price = 8.99
puts item3.price
puts item1.print_info