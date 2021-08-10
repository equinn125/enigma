require_relative 'spec_helper'
require './lib/key'

RSpec.describe Key do
  it 'exists with a pre-created key' do
    given_key = Key.new("02715")
    expect(given_key).to be_a(Key)
    expect(given_key.key).to eq("02715")
  end

  it 'exists with a random key if one is not provided' do
    generated_key1 = Key.new()
    generated_key2 = Key.new()
    expect(generated_key1).to be_a(Key)
    expect(generated_key1.key.length).to eq(5)
    expect(generated_key1.key.class).to eq(String)
    expect(generated_key2.key).not_to eq(generated_key1.key)
  end

  describe '#set_shift_key' do
    it 'returns an array with the keys split' do
      given_key = Key.new("02715")
      expect(given_key.set_shift_key).to eq(["02", "27", "71", "15"])
    end
  end
end
