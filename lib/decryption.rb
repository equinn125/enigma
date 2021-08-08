class Decryption
  attr_reader :message, :key, :offset, :alpha
  def initialize(message, key, date)
    @message = message
    @key = Key.new(key)
    @offset= Offset.new(date)
    @alpha = ("a".."z").to_a << " "
  end
end
