require 'oystercard'

describe Oystercard do

  describe "#initialize" do

    it "should take a default balance of zero" do
      expect(subject.balance).to eq 0
    end

  end

end