a = 1..5

a.include?(0)
a.include?(4.9)
a.include?(5)
a.include?(6)

a = 1...5

a.include?(0)
a.include?(4.9)
a.include?(5)
a.include?(6)


def charge(age)
  case age
  when 0..5
    0
  when 6..12
    300
  when 13...18
    600
  else
    1000
  end
end


numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end


sum = 0
for n in numbers
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end



numbers = [1, 2, 3, 4, 5]
loop do
  n = numbers.sample
  puts n
  break if n == 5
end


while true
  n = numbers.sample
  puts n
  break if n == 5
end




fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]

fruits.each do |fruit|
  numbers.shuffle.each do |n|
    puts "#{fruit}, #{n}"
    break if n == 3
  end
end

catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
        throw :done
      end
    end
  end
end