require 'spec_helper'

describe HelloRubyCalculator::Calculator do
  let(:calculator) { described_class.new }

  describe '#sum' do
    it 'sums all the args' do
      expect(calculator.sum(1, 2, 3)). to eq 6
    end
  end

  describe '#subtract' do
    it 'subtracts all the args' do
      expect(calculator.subtract(10, 5, 1)). to eq 4
    end
  end

  describe '#multiply' do
    it 'multiplies all the args' do
      expect(calculator.multiply(5, 5, 2)). to eq 50
    end
  end

  describe '#divide' do
    it 'divides all the args' do
      expect(calculator.divide(100, 10, 2)). to eq 5
    end
  end

  context 'when one or more param is not a number' do
    it 'raises WrongParams error' do
      expect{ calculator.sum(1, 'a') }.to raise_error HelloRubyCalculator::WrongParams
    end
  end

  context 'when parameters is empty' do
    it 'raises EmptyParams error' do
      expect{ calculator.sum }.to raise_error HelloRubyCalculator::EmptyParams
    end
  end
end
