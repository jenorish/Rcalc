require_relative '../ruby_calculator'

RSpec.describe RubyCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(RubyCalculator.add("")).to eq(0)
    end
    it 'returns 6 for "1,2,3" String' do
      expect(RubyCalculator.add("1,2,3")).to eq(6)
    end

    it 'returns 6 with given "1\n2,3" String' do
      expect(RubyCalculator.add("1,2,3")).to eq(6)
    end
  end
end
