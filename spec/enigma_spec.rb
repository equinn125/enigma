require_relative 'spec_helper'
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

  it 'can encrypt a message using todays date' do #change this
    enigma = Enigma.new
    expected = {
      encryption: "nefau qdxly",
      key: "02715",
      date: Date.today.strftime("%d%m%y")
    }
    expect(enigma.encrypt("hello world", "02715")).to eq(expected)
  end

  it 'can decrypt a message using todays date' do #change this test
    enigma = Enigma.new
    expected = {
    decryption: "hello world",
    key: "02715",
    date: Date.today.strftime("%d%m%y")
  }
  expect(enigma.decrypt("nefau qdxly", "02715")).to eq(expected)
  end

  xit 'can encrypt a message with a random key and todays date' do #change this test too
    enigma = Enigma.new
    expected = {
    encryption: " ",
    key: rand(5 ** 5).to_s.rjust(5,'0'),
    date: Date.today.strftime("%d%m%y")
  }
  expect(enigma.encrypt("erin quinn")).to eq(expected)
  end
end
