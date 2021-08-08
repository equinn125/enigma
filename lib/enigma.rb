class Enigma
  def initialize
  end

  def encrypt(message, key = nil, date= nil)
  new =  Encryption.new(message, key, date)
  {encryption: new.encrypt(message),
    key: key,
    date: date
  }
  end

  def decrypt(message, key = nil, date = nil)
    new = Decryption.new(message, key, date)
    {decryption: new.decrypt(message),
      key: key,
      date: date
    }
  end
end
