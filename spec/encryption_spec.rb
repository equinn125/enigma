require './lib/key'
require './lib/offset'
require './lib/encryption'

RSpec.describe Encryption do
  it 'exists' do
    encryption = Encryption.new("hello world", "02715", "040895")
    expect(encryption).to be_a(Encryption)
    expect(encryption.message).to eq("hello world")
    expect(encryption.key.class).to eq(Key)
    expect(encryption.offset.class).to eq(Offset)
  end

  describe '#full_shift' do
    it 'returns a hash with the letter as the key and the shift as the value' do
      encryption = Encryption.new("hello world", "02715", "040895")
      expected = {
        :a => 3,
        :b => 27,
        :c => 73,
        :d => 20
      }
      expect(encryption.full_shift).to eq(expected)
    end
  end
end
