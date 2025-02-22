require_relative '../ruby_calculator'

RSpec.describe RubyCalculator do
  describe '.add' do
    it 'returns 0 for an empty string' do
      expect(RubyCalculator.add("")).to eq(0)
    end
  end
end
