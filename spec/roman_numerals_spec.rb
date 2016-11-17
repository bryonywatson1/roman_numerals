require './lib/roman_numerals'

describe Numerals  do
  subject(:numeral) {described_class.new}

  it 'changes 1 to I' do
    expect(numeral.translate(1)).to eq 'I'
  end

  it 'changes 5 to V' do
    expect(numeral.translate(5)).to eq 'V'
  end

  it 'changes 10 to X' do
    expect(numeral.translate(10)).to eq 'X'
  end

  it 'changes 50 to L' do
    expect(numeral.translate(50)).to eq 'L'
  end

  it 'changes 100 to C' do
    expect(numeral.translate(100)).to eq 'C'
  end

it 'changes 500 to D' do
  expect(numeral.translate(500)).to eq 'D'
end

it 'changes 1000 to M' do
  expect(numeral.translate(1000)).to eq 'M'
end

it 'changes 99 to XCIX' do
  expect(numeral.translate(99)).to eq 'XCIX'
end


it 'changes 999 to CMXCIX' do
  expect(numeral.translate(999)).to eq 'CMXCIX'
end

it 'changes 54 to LIV' do
  expect(numeral.translate(54)).to eq "LIV"
end

it 'changes 856 to DCCCLVI' do
  expect(numeral.translate(856)).to eq 'DCCCLVI'
end

it 'raises error if number is smaller than 1' do
  expect {numeral.translate(0)}.to raise_error("number must be > 0")
end

it 'raises error if given something other than an integer' do
  expect {numeral.translate("string")}.to raise_error("input must be an integer")
end

end
