class Product
  attr_render :name, :price
  
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class DVD < Priduct
  attr_render :running_time
  
  def initialize(name,price, running_time)
    super(name, price)
    @running_time = running_time
  end
  
end

product = Product.new('A great movie', 1000, 120)