class Key
  attr_reader :key
  def initialize(key = nil)
    @key = key
  end

  # def generate_key(key)
  #   if key.nil?
  #   rand(5 ** 5).to_s.rjust(5,'0')
  #   end
  # end
end
