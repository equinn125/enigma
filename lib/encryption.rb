class Encryption
  attr_reader :message, :key, :offset
  def initialize(message, key, date)
    @message = message
    @key = Key.new(key)
    @offset= Offset.new(date)
    @alpha_array = ("a".."z").to_a << " "
  end

  def full_shift
    {
      :a => @key.set_shift_key[0].to_i + @offset.set_offset_shift[0].to_i,
      :b => @key.set_shift_key[1].to_i + @offset.set_offset_shift[1].to_i,
      :c => @key.set_shift_key[2].to_i + @offset.set_offset_shift[2].to_i,
      :d => @key.set_shift_key[3].to_i + @offset.set_offset_shift[3].to_i,
    }
  end
end
