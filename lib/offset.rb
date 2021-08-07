require 'date'
class Offset
  attr_reader :date
  def initialize(date = nil)
    if date.nil?
      @date = Date.today.strftime("%d%m%y")
    else
      @date = date
    end
  end

  def last_4_square_date
    square = (@date.to_i**2)
    square.to_s[-4..-1]
  end
end
