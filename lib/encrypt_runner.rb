require_relative 'enigma'
file = File.open('message.txt',"r")
message = file.read
file.close
enigma = Enigma.new
result = enigma.encrypt(message)
creator = File.open("encrypted.txt","w")
creator.write(result[:encryption])
puts "Created '#{'encrypted.txt'}' with the key #{result[:key]} and date #{result[:date]}"
