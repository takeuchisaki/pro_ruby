require 'date'


records = [
  [2021],
  [2019, 5],
  [2017, 11, 25]
]

records.map do |record|
  case record.size
  when 1
    Date.new(record[0], 1, 1)
  when 2
    Date.new(record[0], record[1], 1)
  when 3
    Date.new(record[0], record[1], record[2])
  end
end


records.map do |record|
  case record
  in [y]
    Date.new(y, 1, 1)
  in [y, m]
    Date.new(y, m, 1)
  in [y, m, d]
    Date.new(y, m, d)
  end
end



cars = [
  {name:'TheBeatle',engine:'105ps'},
  {name:'Prius',engine:'98ps',motor:'72ps'},
  {name:'Tesla',motor:'306ps'}
]


cars.each do |car|
  if car.key?(:engine) && car.key?(:motor)
    puts "Hybrid: #{car[:name]} / engine: #{car[:engine]} / motor: #{car[:motor]}"
  elsif car.key?(:engine)
    puts "Gasoline: #{car[:name]} / engine: #{car[:engine]}"
  elsif car.key?(:motor)
    puts "EV: #{car[:name]} / motor: #{car[:motor]}"
  end
end


cars.each do |car|
  case car
  in {name:, engine:, motor:}
    puts "Hybrid: #{name} / engine: #{engine} / motor: #{motor}"
  in {name:, engine:}
    puts "Gasoline: #{name} / engine: #{engine}"
  in {name:, motor:}
    puts "EV: #{name} / motor: #{motor}"
  end
end



data = [[1, 2, 3], [5, 4, 6]]
data.each do |numbers|
  case numbers
  in [a, b, c] if b == a + 1 && c == b + 1
    puts "matched: #{numbers}"
  else
    puts "not matched: #{numbers}"
  end
end


case [1, 2, 3, 2, 1]
in [*, n, 2, *] if n == 3
  "matched: #{n}"
else
  "not matched"
end


person = {name: 'Alice', children: ['Bob']}
if person in {name:, children: [_]}
  "Hello, #{name}!"
end


cars = [
  {name: 'The Beatle', engine: '105ps'},
  {name: 'Prius', engine: '98ps', motor: '72ps'},
  {name: 'Tesla', motor: '306ps'}
]

cars.select do |car|
  car in {name:, motor:}
end


words = 'Ruby is fun'

words.split(' ')
     .map { |word| word.upcase + '!' * 3}
     .join(' ') => loud_voice



class Point
  def initialize(x, y)
    @x = x
    @y= y
  end
  
  def deconstruct
    [@x, @y]
  end
  
  def deconstruct_keys(keys)
    hash = {}
    hash[:x] = @x if keys.nil? || keys.include?(:x)
    hash[:y] = @y if keys.nil? || keys.include?(:y)
    hash
  end
  
  def to_s
    "x:#{@x}, y:#{@y}"
  end
end

point = Point.new(10, 20)

case point
in [1, 2]
  "no matched"
in [10, 20]
  "matched"
end

case point
in {x: 1, y: 2}
  "no matched"
in {x: 10, y: 20}
  "matched"
end


data = [
  Point.new(10, 20),
  [10, 20]
]

data.each do |obj|
  case obj
  in Point(10, 20)
    puts "point=#{obj}"
  in Array(10, 20)
    puts "array=#{obj}"
  end
end