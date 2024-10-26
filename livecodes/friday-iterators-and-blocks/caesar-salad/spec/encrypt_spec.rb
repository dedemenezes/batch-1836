require_relative '../encrypt'

RSpec.describe('#encrypt') do
  it 'returns the encrypted text shifted 3 letters to the left' do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end
end
