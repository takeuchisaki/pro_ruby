File.open('./lib/fizz_buzz.rb', 'r') do |f|
  puts f.readlines.count
end


require 'fileutils'

FileUtils.mv('./lib/hello_world.tet', './lib/hello_world.rb')


require 'pathname'

lib = Pathname.new('./lib')

lib.file?

lib.directory?

lib.join('sample.txt').to_s
