class Enigma
  def initialize
  end
  #figure out where to handle  uppercase and additonal symbol edgecases

  def encrypt(message, key = nil, date= nil) #potentially change this to reduce redundancy
  new =  Encryption.new(message, key, date)
  {encryption: new.encrypt(message),
    key: Key.new(key).key,
    date: Offset.new(date).date
  }
  end

  def decrypt(message, key = nil, date = nil)
    new = Decryption.new(message, key, date)
    {decryption: new.decrypt(message),
      key: Key.new(key).key,
      date: Offset.new(date).date
    }
  end
end
