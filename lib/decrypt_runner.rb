require_relative 'enigma'
file = File.open('message.txt',"r")
message = file.read
file.close
enigma = Enigma.new
result = enigma.decrypt(message)
creator = File.open("decrypted.txt","w")
creator.write(result[:decryption])
puts "Created '#{'decrypted.txt'}' with the key #{result[:key]} and date #{result[:date]}"
