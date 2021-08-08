require './lib/key'
require './lib/offset'
require './lib/decryption'

RSpec.describe Decryption do
  it 'exists' do
    decryption = Decryption.new("hello world", "02715", "040895")
    expect(decryption).to be_a(Decryption)
    expect(decryption.message).to eq("hello world")
    expect(decryption.key.class).to eq(Key)
    expect(decryption.offset.class).to eq(Offset)
  end
end
