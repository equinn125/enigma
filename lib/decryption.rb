require_relative 'key'
require_relative 'offset'
class Decryption
  attr_reader :message, :key, :offset, :alpha
  def initialize(message, key, date)
    @message = message
    @key = Key.new(key)
    @offset= Offset.new(date)
    @alpha = ("a".."z").to_a << " "
  end

  def run_decrypt
    decrypt(message)
    recipt_hash
  end

  def full_shift
    {
      :a => @key.set_shift_key[0].to_i + @offset.set_offset_shift[0],
      :b => @key.set_shift_key[1].to_i + @offset.set_offset_shift[1],
      :c => @key.set_shift_key[2].to_i + @offset.set_offset_shift[2],
      :d => @key.set_shift_key[3].to_i + @offset.set_offset_shift[3]
    }
  end

  def decrypt(message)
  decrypted_message = []
    message.each_char.with_index do |letter, i|
      id = alpha.index(letter)
      if alpha.include?(letter)
        i_a = (id - full_shift.values[i % 4]) % 27
        decrypted_message << alpha[i_a]
      end
    end
    decrypted_message.join
  end

  def recipt_hash
    {decryption: decrypt(message),
      key: key.key,
      date: offset.date
    }
  end
end
