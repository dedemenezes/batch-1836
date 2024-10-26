# acronymize('away from keyboar') == "AFK"
require_relative '../acronymize'

RSpec.describe('#acronymize') do
  it 'returns the acronym when passed a downcase sentence' do
    actual = acronymize('away from keyboard')
    expected = 'AFK'
    expect(actual).to eq(expected)
  end
  it 'returns the acronym when passed weird case sentence' do
    actual = acronymize('wOrKing FroM HOme')
    expected = 'WFH'
    expect(actual).to eq(expected)
  end
end
