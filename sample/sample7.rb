class Product
  # Product.freeze
  attr_render :name, :price
  
  def to_s
    "name: #{name}"
  end
  
  private
  
  def name
    'A great movie'
  end
  
  # def initialize(name, price)
  #   @name = name
  #   @price = price
  # end
  
end

class DVD < Priduct
  attr_render :running_time
  
  # def initialize(name,price, running_time)
  #   super(name, price)
  #   @running_time = running_time
  # end
  
  private
  
  def name
    'A awesome film'
  end
  
  # def to_s
  #   "name: #{name}"
  # end
  
end

product = Product.new('A great movie', 1000, 120)


class CountryCode
  attr_reader :code
  
  def initialize(code)
    @code = code
  end
end