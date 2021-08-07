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

    describe '#square_date(date)' do
      it 'squares a given date' do
        given_offset = Offset.new("040895")
        expect(given_offset.square_date("40895")).to eq(1672401025)
      end
    end
end
