class Oystercard
  attr_reader :balance

  LIMIT = 90

  def initialize
    @balance = 0
  end

  def top_up(amount)
  	fail "Error! Card value cannot exceed #{LIMIT}" if over_limit?(amount)
  	@balance += amount
  end

  private

  def over_limit?(amount)
  	(@balance + amount) > LIMIT
  end

end