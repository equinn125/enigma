class Key
  attr_reader :key
  def initialize(key = nil)
    if key.nil?
      @key = rand(5 ** 5).to_s.rjust(5,'0')
    else
      @key = key
    end
  end
end
