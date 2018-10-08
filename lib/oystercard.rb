class OysterCard

  DEFAULT_MAX_BALANCE = 90
  DEFAULT_MIN_BALANCE = 1


  attr_reader :balance, :entry_station

  def initialize
    @balance = 0
  end

  def top_up(amount)
    error_message = "Maximum balance (#{DEFAULT_MAX_BALANCE}) exceeded"
    raise error_message if (@balance + amount) > DEFAULT_MAX_BALANCE
    @balance += amount
  end

  def in_journey?
    @entry_station != nil
  end

  def touch_in(station)
    @entry_station = station
  end

  def touch_out(fare=1)
    deduct(fare)
    @entry_station = nil
  end

  private

  def deduct(amount)
    raise("Insufficient funds") if @balance < DEFAULT_MIN_BALANCE
    @balance -= amount
  end

end
