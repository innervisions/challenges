require 'date'

class Meetup
  DOTW = { 'sunday' => 0, 'monday' => 1, 'tuesday' => 2, 'wednesday' => 3,
           'thursday' => 4, 'friday' => 5, 'saturday' => 6 }
  RANGES = { 'first' => (1..7), 'second' => (8..14), 'third' => (15..21),
             'fourth' => (22..28), 'fifth' => (29..31), 'teenth' => (13..19),
             'last' => (22..31) }

  def initialize(year, month)
    @year = year
    @month = month
  end

  def day(dotw, nth)
    correct_day = nil
    RANGES[nth.downcase].each do |day|
      break unless Date.valid_date?(@year, @month, day)
      if Date.civil(@year, @month, day).wday == DOTW[dotw.downcase]
        correct_day = day
      end
    end
    correct_day ? Date.civil(@year, @month, correct_day) : nil
  end
end
