require './lib/key'

RSpec.describe Key do
  it 'exists and' do
    given_key = Key.new("02715")
    expect(given_key).to be_a(Key)
    expect(given_key.key).to eq("02715")
  end
end
