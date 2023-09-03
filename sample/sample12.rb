require_relative '../lib/ticket'
require_relative '../lib/gate'

juso = Gate.new(:juso)
mikuni = Gate.new(:mikuni)
ticket = Ticket.new(160)

juso.enter(ticket)
puts mikuni.exit(ticket)



def to_hex(r, g, b)
  [r, g, b].sum('#') do |n|
    puts n
    n.to_s(16).rjust(2, '0')
  end
end


def greet(country)
  puts 'greet start.'
  return 'countryを入力してください' if country.nil?
  
  if country == 'japan'
    puts 'japan'
    'こんにちは'
  else
    puts 'other'
    'hello'
  end
end


def calc_fare(ticket)
  form = STATIONS.index(ticket.stamped_at)
  to = STATIONS.index(@name)
  distance = p to - from
  FARES[distance - 1]
end



class User < ApplicationRecord
  def facebook_username
    info = facebook_auth.auth_info.info
    logger.debug "[DEBUG] info.name : #{info.name}"
    info.name
  end
end