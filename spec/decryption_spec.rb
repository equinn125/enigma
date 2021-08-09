require_relative 'spec_helper'
# require './lib/key'
# require './lib/offset'
require './lib/decryption'

RSpec.describe Decryption do
  it 'exists' do
    decryption = Decryption.new("keder ohulw", "02715", "040895")
    expect(decryption).to be_a(Decryption)
    expect(decryption.message).to eq("keder ohulw")
    expect(decryption.key.class).to eq(Key)
    expect(decryption.offset.class).to eq(Offset)
  end

  describe '#full_shift' do
    it 'returns a hash with the letter as the key and the shift as the value' do
      decryption = Decryption.new("keder ohulw", "02715", "040895")
      expected = {
        :a => 3,
        :b => 27,
        :c => 73,
        :d => 20
      }
      expect(decryption.full_shift).to eq(expected)
    end
  end
  describe '#decrypt(message)' do
    it 'can return a encrypted message' do
      decryption = Decryption.new("keder ohulw", "02715", "040895")
      expect(decryption.decrypt("keder ohulw")).to eq("hello world")
    end
  end
end
