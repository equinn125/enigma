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

  def square_date
     date_int = @date.to_i
     date_int ** 2
  end
end
