class OysterCard

  DEFAULT_MAX_BALANCE = 90
  DEFAULT_MIN_BALANCE = 1


  attr_reader :balance

  def initialize
    @balance = 0
    @in_journey = false
  end

  def top_up(amount)
    error_message = "Maximum balance (#{DEFAULT_MAX_BALANCE}) exceeded"
    raise error_message if (@balance + amount) > DEFAULT_MAX_BALANCE
    @balance += amount
  end

  def deduct(amount)
    raise("Insufficient funds") if @balance < DEFAULT_MIN_BALANCE
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
