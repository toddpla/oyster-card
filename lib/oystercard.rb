class OysterCard

  DEFAULT_MAXIMUM_BALANCE = 90


  attr_reader :balance, :DEFAULT_MAXIMUM_BALANCE

  def initialize
    @balance = 0
  end

  def top_up(amount)
    error_message = "Maximum balance (#{DEFAULT_MAXIMUM_BALANCE}) exceeded"
    raise error_message if (@balance + amount) > DEFAULT_MAXIMUM_BALANCE
    @balance += amount
  end

end
