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
end
