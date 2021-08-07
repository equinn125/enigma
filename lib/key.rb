class Key
  attr_reader :key
  def initialize(key = nil)
    if key.nil?
      @key = rand(5 ** 5).to_s.rjust(5,'0')
    else
      @key = key
    end
  end

  def split_a(key)
    @key[0..1]
  end

  def split_b(key)
    @key[1..2]
  end

  def split_c(key)
    @key[2..3]
  end

  def split_d(key)
    @key[3..4]
  end
end
