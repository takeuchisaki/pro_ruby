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



require 'csv'

CSV.open('./lib/sample.csv', 'w') do |csv|
    csv << ['Namae', 'Email', 'Age']
    csv << ['Alice', 'alice@example.com', 20]
end


CSV.foreach('./lib/sample.tsv', col_sep: "\t") do |row|
    puts "1: #{row[0]}, 2: #{row[1]}, 3: #{row[2]}"
end




require 'json'

user = { name: 'Alice', email: 'alice@example.com', age: 20 }

user_json = user.to_json
puts user_json

JSON.parse(user_json)

JSON.parse(user_json, symbolize_names: true)




require 'yaml'

yaml = <<TEXT
alice:
  name: 'Alice'
  email: 'alice@example.com'
  age: 20
TEXT

users = YAML.load(yaml)

users['alice']['gender'] = :female

puts YAML.dump(users)





code = '[1, 2, 3].map { |n| n * 10 }'

eval(code)




task :hello_world do
  puts 'Hello, world!'
end


class MyRakeFile < RakeFile
  def main()
    dese('テスト用のタスクです。');
    task(:hello_world, -> {
      puts('Hello, world!');
    });
  end
end