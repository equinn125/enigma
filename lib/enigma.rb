require_relative 'encryption'
require_relative 'decryption'
class Enigma
  def initialize
  end

  def encrypt(message, key = nil, date= nil)
  encrypt =  Encryption.new(message, key, date)
  encrypt.run
  end

  def decrypt(message, key, date= nil)
    decrypt = Decryption.new(message, key, date)
    decrypt.run_decrypt
  end
end
