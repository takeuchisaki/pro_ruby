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

