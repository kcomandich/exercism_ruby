class TwelveDays
  MAIN_LYRIC = "On the %s day of Christmas my true love gave to me: %s".freeze
  GIFTS = {
    1 => [ 'first', "a Partridge in a Pear Tree" ],
    2 => [ 'second', "two Turtle Doves" ],
    3 => [ 'third', "three French Hens" ],
    4 => [ 'fourth', "four Calling Birds" ],
    5 => [ 'fifth', "five Gold Rings" ],
    6 => [ 'sixth', "six Geese-a-Laying" ],
    7 => [ 'seventh', "seven Swans-a-Swimming" ],
    8 => [ 'eighth', "eight Maids-a-Milking" ],
    9 => [ 'ninth', "nine Ladies Dancing" ],
    10 => [ 'tenth', "ten Lords-a-Leaping" ],
    11 => [ 'eleventh', "eleven Pipers Piping" ],
    12 => [ 'twelfth', "twelve Drummers Drumming" ]
  }.freeze

  def self.song
    result = ''
    (1..12).each {|i| result << verse(i)} 
    result
  end

  private

  def self.verse(num)
    result = MAIN_LYRIC % [ GIFTS[num][0], GIFTS[num][1] ]

    if num > 2
      (num-1).downto(2) {|i| result << ", %s" % GIFTS[i][1] }
    end

    if num > 1
      result << ", and %s" % GIFTS[1][1]
    end

    if num < 12
      result << ".\n\n"
    else
      result << ".\n"
    end

    result
  end
end
