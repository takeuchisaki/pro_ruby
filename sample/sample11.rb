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