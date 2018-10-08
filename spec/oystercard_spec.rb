require 'oystercard'

describe OysterCard do

  describe '#balance' do
    it 'a new card should have a defualt balance of 0' do
      expect(subject.balance).to eq 0
    end
  end

end
