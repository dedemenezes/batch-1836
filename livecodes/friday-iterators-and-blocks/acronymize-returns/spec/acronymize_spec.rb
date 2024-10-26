require_relative '../acronymize'

# acronymize('AWAY FROM KEYBOARD') == 'AFK'
# acronymize('Working from home') == 'WFH'
# RSpec - test library for Ruby

RSpec.describe('#acronymize') do
  it 'returns the acronym on downcased sentences' do
    actual = acronymize('working from home')
    expected = 'WFH'
    expect(actual).to eq(expected)
  end

  it 'returns the acronym on weird case sentences' do
    actual = acronymize('aWaY fRoM KeYbOaRd')
    expected = 'AFK'
    expect(actual).to eq(expected)
  end
end
