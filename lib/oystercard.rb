class OysterCard

  DEFAULT_MAXIMUM_BALANCE = 90


  attr_reader :balance

  def initialize
    @balance = 0
    @in_journey = false
  end

  def top_up(amount)
    error_message = "Maximum balance (#{DEFAULT_MAXIMUM_BALANCE}) exceeded"
    raise error_message if (@balance + amount) > DEFAULT_MAXIMUM_BALANCE
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end

  def in_journey?
    @in_journey
  end

  def touch_in
    @in_journey = true
  end

  def touch_out
    @in_journey = false
  end

end
