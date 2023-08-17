puts "Hello, world!".rainbow

puts [1, 2, 3].rainnbow

puts "\e[31mABC\e[0m"


module Greetable
  def hello
    "hello"
  end
end

class Product
  def title
    log "title is called."
    "A great movie"
  end
  
  private
  
  def log(text)
    puts "[LOG] #{text}"
  end
end

class User
  def name
    log "name is called."
    "Alice"
  end
  
  private
  
  def log(text)
    puts "[LOG] #{text}"
  end
end

class User
  p self
  p self.class
end



module Baseball
  class Secound
    def intialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end
  end
end

Basaball::Secound.new("Alice, 13")


module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
  
  module_function :log
end


class Product
  include Loggable
  
  def title
    log "title is called."
    "A great movie"
  end
  
end



module NameDecorrator
  def name
    "<<#{super}>>"
  end
end

class Product
  prepend NameDecorrator
  
  # def name
  #   "A great film"
  # end
  
end
