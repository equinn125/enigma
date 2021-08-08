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

  def set_offset_shift #refactor here to use an enumerable
    last_4_square_date.split(//)
  end
  # def offset_a
  #   last_4_square_date(date)[0]
  # end
  #
  # def offset_b
  #   last_4_square_date(date)[1]
  # end
  #
  # def offset_c
  #   last_4_square_date(date)[2]
  # end
  #
  # def offset_d
  #   last_4_square_date(date)[3]
  # end
end
