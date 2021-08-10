require_relative 'enigma'
file = File.open(ARGV[0],"r")
message = file.read
file.close
enigma = Enigma.new
result = enigma.encrypt(message)
creator = File.open(ARGV[1],"w")
creator.write(result[:encryption])
puts "Created '#{ARGV[1]}' with the key #{result[:key]} and date #{result[:date]}"
