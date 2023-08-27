require_relative '../lib/ticket'
require_relative '../lib/gate'

juso = Gate.new(:juso)
mikuni = Gate.new(:mikuni)
ticket = Ticket.new(160)

juso.enter(ticket)
puts mikuni.exit(ticket)