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

    it 'returns 25 with given "//;,10,,1,2\n3;4,\n5" String' do
      expect(RubyCalculator.add("//;,10,,1,2\n3;4,\n5")).to eq(25)
    end

    it 'Checked Random numbers "1,3,3,3,2,,3,5,2,5,5," String' do
      expect(RubyCalculator.add("1,3,3,3,2,,3,5,2,5,5,")).to eq(32)
    end

    it 'Checked Random numbers with sum value "1,3,3,3,2,,3,5,2,5,5," String' do
      numbers = [1,2,3,4]
      expect(RubyCalculator.add("1,2;,3,\n,4;")).to eq(numbers.sum)
    end

    it 'throws an exception for negative numbers' do
      expect { RubyCalculator.add("1,-2,3") }.to raise_error("negative numbers not allowed -2")
    end

    it 'throws an exception listing all negative numbers' do
      expect { RubyCalculator.add("1,-2,-3,4") }.to raise_error("negative numbers not allowed -2,-3")
    end

    it 'returns 6 with given "///[***]\n1***2***3" String' do
      expect(RubyCalculator.add("///[***]\n1***2***3")).to eq(6)
    end
  end
  describe '.parse_numbers' do 
    it 'returns [0, 0, 10, 0, 1, 2, 3, 4, 0, 5] with given "//;,10,,1,2\n3;4,\n5" String' do
      expect(RubyCalculator.parse_numbers("//;,10,,1,2\n3;4,\n5")).to eq([0, 0, 10, 0, 1, 2, 3, 4, 0, 5])
    end
  end
  describe '.validate_negatives' do 
     it 'throws an exception listing all negative numbers' do
      expect { RubyCalculator.validate_negatives([1,-2,-3,4]) }.to raise_error("negative numbers not allowed -2,-3")
    end
  end
end


