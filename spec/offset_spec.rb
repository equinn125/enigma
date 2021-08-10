require_relative 'spec_helper'
require './lib/offset'

RSpec.describe Offset do
  it 'exists with todays date' do
    today_offset = Offset.new()
    expect(today_offset).to be_a(Offset)
    expect(today_offset.date).to eq(Date.today.strftime("%d%m%y"))
    end

    it 'exists with a date passed through' do
      given_offset = Offset.new("040895")
      expect(given_offset).to be_a(Offset)
      expect(given_offset.date).to eq("040895")
    end

    describe '#last_4_square_date(date)' do
      it 'squares a given date' do
        given_offset = Offset.new("040895")
        expect(given_offset.last_4_square_date).to eq("1025")
      end

      it 'squares todays generated date' do
        today_offset = Offset.new()
        expect(today_offset.last_4_square_date).to eq("4041")
      end
    end

    describe '#set_offset_shift' do
      it 'returns an array of the offset shifts as an interger' do
        given_offset = Offset.new("040895")
        expect(given_offset.set_offset_shift).to eq([1, 0, 2, 5])
      end
    end
end
