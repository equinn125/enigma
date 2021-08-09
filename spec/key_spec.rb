require_relative 'spec_helper'
require './lib/key'

RSpec.describe Key do
  it 'exists with a pre-created key' do
    given_key = Key.new("02715")
    expect(given_key).to be_a(Key)
    expect(given_key.key).to eq("02715")
  end

  it 'exists with a random key if one is not provided' do
    generated_key = Key.new()
    expect(generated_key).to be_a(Key)
    expect(generated_key.key.length).to eq(5)
    expect(generated_key.key.class).to eq(String)
  end

  describe '#set_shift_key' do
    it 'returns an array with the keys split' do
      given_key = Key.new("02715")
      expect(given_key.set_shift_key).to eq(["02", "27", "71", "15"])
    end
  end
end
# describe '#split_a(key)' do
#   it "returns the a split" do
#     given_key = Key.new("02715")
#     expect(given_key.split_a(given_key)).to eq("02")
#   end
# end
#
# describe '#split_b(key)' do
#   it "returns the b split" do
#     given_key = Key.new("02715")
#     expect(given_key.split_b(given_key)).to eq("27")
#   end
# end
#
# describe '#split_c(key)' do
#   it "returns the b split" do
#     given_key = Key.new("02715")
#     expect(given_key.split_c(given_key)).to eq("71")
#   end
# end
#
# describe '#split_d(key)' do
#   it "returns the b split" do
#     given_key = Key.new("02715")
#     expect(given_key.split_d(given_key)).to eq("15")
#   end
# end
