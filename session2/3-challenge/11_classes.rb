# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong

  attr_accessor 'number'

  def initialize (number)
    if number < 0 or number.zero?
      @number = 0
    elsif number > 99
      @number = 99
    else
      @number = number
    end
  end

  def englishNumber number
    if number < 0  # No negative numbers.
      return 'Please enter a number that isn\'t negative.'
    end
    if number == 0
      return 'zero'
    end

    numString = ''  # This is the string we will return.

    onesPlace = ['one',     'two',       'three',    'four',     'five',
                 'six',     'seven',     'eight',    'nine']
    tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
                 'sixty',   'seventy',   'eighty',   'ninety']
    teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
                 'sixteen', 'seventeen', 'eighteen', 'nineteen']

    left  = number
    write = left/1000000
    left  = left - write*1000000

    if write > 0
      millions  = englishNumber write
      numString = numString + millions + ' million'


      if left > 0
        numString = numString + ' and '
      end
    end

    write = left/1000
    left  = left - write*1000

    if write > 0
      thousands  = englishNumber write
      numString = numString + thousands + ' thousand'


      if left > 0
        numString = numString + ' and '
      end
    end


    write = left/100
    left  = left - write*100

    if write > 0
      hundreds  = englishNumber write
      numString = numString + hundreds + ' hundred'


      if left > 0
        numString = numString + ' and '
      end
    end

    write = left/10
    left  = left - write*10

    if write > 0
      if ((write == 1) and (left > 0))
        numString = numString + teenagers[left-1]
        left = 0
      else
        numString = numString + tensPlace[write-1]
      end

      if left > 0
        numString = numString + '-'
      end
    end

    write = left
    left  = 0

    if write > 0
      numString = numString + onesPlace[write-1]
    end

    numString
  end

  def print_song
    number  = @number
    if number>2
      for i in 0..number-3
        puts  englishNumber(number-i).capitalize+" bottles of beer on the wall,",
              englishNumber(number-i).capitalize+" bottles of beer,",
              "Take one down, pass it around,",
              englishNumber(number-i-1).capitalize+" bottles of beer on the wall."
      end
    end
    if number>1
      puts  "Two bottles of beer on the wall,",
            "Two bottles of beer,",
            "Take one down, pass it around,",
            "One bottle of beer on the wall."
    end
    if !number.zero?
      puts  "One bottle of beer on the wall,",
            "One bottle of beer,",
            "Take one down, pass it around,",
            "Zero bottles of beer on the wall."
#      puts "No more bottles of beer on the wall, no more bottles of beer"
#      puts "Go to the store and buy some more, "+englishNumber(number)+" bottles of beer on the wall."
    end
  end

end
