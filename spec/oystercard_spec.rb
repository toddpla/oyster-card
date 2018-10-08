require 'oystercard'

describe OysterCard do

  describe '#balance' do
    it 'a new card should have a defualt balance of 0' do
      expect(subject.balance).to eq 0
    end
  end

  describe 'top_up' do
    it "tops up the balance on the oyster card" do
      subject.top_up(5)
      expect(subject.balance).to eq 5
    end
  end

end
