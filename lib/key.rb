class Key
  attr_reader :key
  def initialize(key = nil)
    if key.nil?
      @key = create_key
    else
      @key = key
    end
  end
  def create_key
    @key = rand(6 ** 5).to_s.rjust(5,'0')
  end

  def set_shift_key
    final = []
    4.times do |arg|
      final << @key[arg] + @key[arg + 1]
    end
    final
  end
end
