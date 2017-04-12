require 'rails_helper'

RSpec.describe FizzerBuzzer do
  include FizzerBuzzer

  describe '#generate_fizzer' do
    it 'returns Fizz when number given is divisible by 3' do
      number = 3
      expect(generate_fizzer number).to eq('Fizz')
    end

    it 'returns Buzz when number given is divisible by 5' do
      number = 5
      expect(generate_fizzer number).to eq('Buzz')
    end

    it 'returns FizzBuzz when number given is divisible by 3 and 5' do
      number = 15
      expect(generate_fizzer number).to eq('FizzBuzz')
    end

    it 'returns an empty string when number given is NOT divisible by 3 OR 5' do
      number = 7
      expect(generate_fizzer number).to eq('')
    end
  end
end