#! usr/bin/env ruby

require 'wolf'

describe 'wolf' do

  it 'returns the most profitable buy day and sell day' do
    expect(wolf([3,2,5,6,2])).to eq({ 'buy_day': 1, 'sell_day': 3 })
  end

  it 'returns the most profitable buy day and sell day' do
    expect(wolf([10,2,5,8,9,1,6,7,9,8])).to eq({ 'buy_day': 5, 'sell_day': 8 })
  end

end

describe 'day_to_buy' do
  it 'returns the best day to buy the stocks in order to return the maxumum profit' do
    expect(day_to_buy([3,2,5,6,2])).to eq({'buy_day' => 1, 'max_profit' => 4})
  end

  it 'returns the best day to buy the stocks in order to return the maxumum profit' do
    expect(day_to_buy([10,2,5,8,9,1,6,7,9,8])).to eq({'buy_day' => 5, 'max_profit' => 8})
  end

end

describe 'list_of_differences' do
  it 'returns an array of the differences between each element and every subsequent element' do
    expect(list_of_differences([3,2,5,6,2])).to eq([[-1,2,3,-1],[3,4,0],[1,-3],[-4]])
  end
end


describe 'differences' do

  it 'returns an array of differences between the first element and every other element' do
    expect(differences([10,2,5,8,9,1,6,7,9,8])).to eq [-8,-5,-2, -1, -9, -4, -3, -1, -2]
  end
  it 'returns the answers of the differences between the first element of the array with other element' do
    expect(differences([2,3,5,2,6])).to eq [1,3,0,4]
  end
end
