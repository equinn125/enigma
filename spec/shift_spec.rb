require './lib/shift'

RSpec.describe Shift do
  it 'exists and has attributes' do
    shift = Shift.new('02715', '040895')
    expect(shift).to be_a(Shift)
    expect(shift.key).to eq('02715')
    expect(shift.date).to eq('040895')
  end
end
