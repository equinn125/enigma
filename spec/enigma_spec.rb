require 'date'
require './lib/enigma'

RSpec.describe Enigma do
  it 'creates a output hash of the encrypted message with the  key and date used' do
    enigma = Enigma.new
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }
    expect(enigma.encrypt("hello world", "02715", "040895")).to eq(expected)
  end
end
