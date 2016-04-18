require 'oystercard'

describe Oystercard do
  describe "#initialize" do
	it "should take a default balance of zero" do
      expect(subject.balance).to eq 0
    end
  end

  describe "#top_up" do
  	it 'adds value to the card balance' do
  		subject.top_up(10)
  		expect(subject.balance).to eq 10
  	end
  end


end