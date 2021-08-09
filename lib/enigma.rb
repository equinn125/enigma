require_relative 'encryption'
require_relative 'decryption'
class Enigma
  def initialize
  end
  #figure out where to handle  uppercase and additonal symbol edgecases

  def encrypt(message, key = nil, date= nil) #potentially change this to reduce redundancy
  encrypt =  Encryption.new(message, key, date)
  encrypt.run
  end

  def decrypt(message, key, date= nil)
    decrypt = Decryption.new(message, key, date)
    decrypt.run_decrypt
  end
end
