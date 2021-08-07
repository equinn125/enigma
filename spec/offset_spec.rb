require './lib/offset'

RSpec.describe Offset do
  it 'exists with todays date' do
    today_offset = Offset.new()
    expect(today_offset).to be_a(Offset)
    expect(today_offset.date).to eq('070821')
    end

    it 'exists with a date passed through' do
      given_offset = Offset.new("040895")
      expect(given_offset).to be_a(Offset)
      expect(given_offset.date).to eq("040895")
    end

    describe '#last_4_square_date(date)' do
      it 'squares a given date' do
        given_offset = Offset.new("040895")
        expect(given_offset.last_4_square_date("040895")).to eq("1025")
      end

      it 'squares todays generated date' do
        today_offset = Offset.new()
        expect(today_offset.last_4_square_date('070821')).to eq("4041")
      end
    end

    describe '#offset_a' do
      it 'returns the a offset' do
        given_offset = Offset.new("040895")
        expect(given_offset.offset_a).to eq("1")
      end
    end
    describe '#offset_b' do
      it 'returns the a offset' do
        given_offset = Offset.new("040895")
        expect(given_offset.offset_b).to eq("0")
      end
    end

    describe '#offset_c' do
      it 'returns the a offset' do
        given_offset = Offset.new("040895")
        expect(given_offset.offset_c).to eq("2")
      end
    end

    describe '#offset_d' do
      it 'returns the a offset' do
        given_offset = Offset.new("040895")
        expect(given_offset.offset_d).to eq("5")
      end
    end
end
