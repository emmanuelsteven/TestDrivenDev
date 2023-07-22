require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context 'when factorial method is called' do
    it 'returns the factorial of a given number' do
      expect(@solver.factorial(0)).to eq(1)
      expect(@solver.factorial(1)).to eq(1)
      expect(@solver.factorial(4)).to eq(24)
      expect(@solver.factorial(5)).to eq(120)
      expect { @solver.factorial(-1) }.to raise_error('Number should not be negative')
    end
  end

  context 'when reverse method is called' do
    it 'returns the reverse value of a string' do
      expect(@solver.reverse('hello')).to eq('olleh')
      expect(@solver.reverse('abdulhamid')).to eq('dimahludba')
      expect(@solver.reverse('josphat')).to eq('tahpsoj')
      expect(@solver.reverse('microverse')).to eq('esrevorcim')
    end
  end

  context 'when fizzbuzz method is called' do
    it 'returns "fizz, buzz / fizzbuzz" when N is divisible by 3, 5 or 3 & 5 respectively else return string' do
      expect(@solver.fizzbuzz(3)).to eq('fizz')
      expect(@solver.fizzbuzz(6)).to eq('fizz')
      expect(@solver.fizzbuzz(5)).to eq('buzz')
      expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(@solver.fizzbuzz(20)).to eq('buzz')
      expect(@solver.fizzbuzz(22)).to eq('22')
    end
  end
end