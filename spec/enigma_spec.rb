require 'date'
require './lib/enigma'

RSpec.describe Enigma do
  it 'creates a output hash of the encrypted message with the provided key and date used' do
    enigma = Enigma.new
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }
    expect(enigma.encrypt("hello world", "02715", "040895")).to eq(expected)
  end

  it 'creates an output hash of the dectypted message witht the provided key and date used' do
    enigma = Enigma.new
    expected = {
      decryption: "hello world",
      key: "02715",
      date: "040895"
    }
    expect(enigma.decrypt("keder ohulw", "02715", "040895")).to eq(expected)
  end

  # it 'can encrypt a message using todays date' do
  #   enigma = Enigma.new
  #   expected = {
  #     encryption: "keder ohulw",
  #     key: "02715",
  #     date: Date.today.strftime("%d%m%y")
  #   }
  #   expect(enigma.encrypt("hello world", "02715")).to eq(expected)
  # end
end
