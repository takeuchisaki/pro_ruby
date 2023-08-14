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