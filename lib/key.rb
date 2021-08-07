class Key
  attr_reader :key
  def initialize(key = nil)
    if key.nil?
      @key = rand(5 ** 5).to_s.rjust(5,'0')
    else
      @key = key
    end
  end

  def set_shift_key
    a_key = @key[0..1]
    b_key = @key[1..2]
    c_key = @key[2..3]
    d_key = @key[3..4]
    ["#{a_key}", "#{b_key}","#{c_key}","#{d_key}"]
  end
end
# def split_a(key)
#   @key[0..1]
# end
#
# def split_b(key)
#   @key[1..2]
# end
#
# def split_c(key)
#   @key[2..3]
# end
#
# def split_d(key)
#   @key[3..4]
# end
