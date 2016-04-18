require 'oystercard'

describe Oystercard do
	let(:limit) {Oystercard::LIMIT}

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

  	it 'prevents top-up beyond the given limit' do
  		subject.top_up(90)
  		expect{subject.top_up(1)}.to raise_error("Error! Card value cannot exceed #{limit}")
  	end
  end


end