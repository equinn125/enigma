require_relative 'spec_helper'
require 'date'
require './lib/enigma'

RSpec.describe Enigma do
  it 'exists' do
    enigma = Enigma.new
    expect(enigma).to be_a(Enigma)
  end
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

  it 'can encrypt a message using todays date' do #change this
    enigma = Enigma.new
    expected = {
      encryption: "nefau qdxly",
      key: "02715",
      date: Date.today.strftime("%d%m%y")
    }
    expect(enigma.encrypt("hello world", "02715")).to eq(expected)
  end

  it 'can decrypt a message using todays date' do
    enigma = Enigma.new
    expected = {
    decryption: "hello world",
    key: "02715",
    date: Date.today.strftime("%d%m%y")
  }
  expect(enigma.decrypt("nefau qdxly", "02715")).to eq(expected)
  end

  it 'can encrypt a message with a random key and todays date' do
    enigma = Enigma.new
    message = "hello"
    encryption1 =enigma.encrypt(message)
    encryption2 = enigma.encrypt(message)
    expect(encryption1[:key].length).to eq(5)
    expect(encryption1[:date]).to eq(Date.today.strftime("%d%m%y"))
    expect(encryption2[:key]).not_to eq(encryption1[:key])
  end
end
