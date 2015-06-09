require './lib/wolf_on_commercial_street'

describe 'wolf_on_commercial_street' do
  it 'returns a hash when given in an array' do
    expect(wolf_on_commercial_street([10,2,5,8,9,1,6,7,9,8])).to(eq({ buy_day: 5, sell_day: 8 }))
  end
  it 'returns a hash when given in an array' do
    expect(wolf_on_commercial_street([10,2,5,8,10,1,6,7,8])).to(eq({ buy_day: 1, sell_day: 4 }))
  end
  it 'returns a hash when given in an array' do
    expect(wolf_on_commercial_street([1,2,3,4,5,6,7,8,9])).to(eq({ buy_day: 0, sell_day: 8 }))
  end
  it 'returns a hash when given in an array' do
    expect(wolf_on_commercial_street([5,5,5,4,5,19,1,17])).to(eq({ buy_day: 6, sell_day: 7 }))
  end
end
