class Clock
  def initialize(hours, minutes)
    @hours, @minutes = minutes.divmod(60)
    @hours = (@hours + hours) % 24
  end

  def self.at(hours, minutes = 0)
    Clock.new(hours, minutes)
  end

  def to_s
    format("%02d", @hours) + ':' + format("%02d", @minutes)
  end

  def +(minutes)
    Clock.at(@hours, @minutes + minutes)
  end

  def -(minutes)
    Clock.at(@hours, @minutes - minutes)
  end

  def ==(other_clock)
    to_s == other_clock.to_s
  end
end
