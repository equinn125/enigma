require 'date'
class Offset
  attr_reader :date, :last
  def initialize(date = nil)
    if date.nil?
      @date = Date.today.strftime("%d%m%y")
    else
      @date = date
    end
  end

  def last_4_square_date
    (@date.to_i**2).to_s[-4..-1]
  end

  def set_offset_shift 
    last_4_square_date.split("").map do |number|
      number.to_i
    end
  end
end
