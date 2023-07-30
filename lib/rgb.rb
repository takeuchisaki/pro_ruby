# ③
def to_hex(r, g, b)
  [r, g, b].sum('#') do |n|
    n.to_s(16).rjust(2, '0')
  end
end

# ②
# def to_hex(r, g, b)
#   hex = '#'
#   [r, g, b].each do |n|
#     hex += n.to_s(16).rjust(2, '0')
#   end
#   hex
# end

# ①
# def to_hex(r, g, b)
#   '#' + 
#   r.to_s(16).rjust(2, '0') +
#   g.to_s(16).rjust(2, '0') +
#   b.to_s(16).rjust(2, '0')
# end




# ⑦
def to_ints(hex) = hex.scan(/\w\w/).map(&:hex)

# # ⑥
# def to_ints(hex)
#   hex.scan(/\w\w/).map(&:hex)
# end

# # ⑤
# def to_ints(hex)
#   hex.scan(/\w\w/).map do |s|
#     s.hex
#   end
# end

# # ④
# def to_ints(hex)
#   r, g, b = hex.scan(/\w\w/)
#   [r, g, b].map do |s|
#     s.hex
#   end
# end

# # ③
# def to_ints(hex)
#   r, g, b = hex[1..2], hex[3..4], [5..6]
#   [r, g, b].map do |s|
#     s.hex
#   end
# end

# # ②
# def to_ints(hex)
#   r = hex[1..2]
#   g = hex[3..4]
#   b = hex[5..6]
#   [r, g, b].map do |s|
#     s.hex
#   end
# end

# ①
# def to_ints(hex)
#   r = hex[1..2]
#   g = hex[3..4]
#   b = hex[5..6]
#   ints = []
#   [r, g, b].each do |s|
#     ints << s.hex
#   end
#   ints
# end