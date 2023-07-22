require_relative '../reverse'

RSpec.describe Reverse do
  include Reverse

  describe '#reverse' do
    it 'correctly reverses a word' do
      reversed = reverse('atif')
      expect(reversed).to eq('fita')
    end
  end
end
