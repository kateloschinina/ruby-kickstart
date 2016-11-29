# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
  result = ""
  for i in 0..(string.length-1)
    if (i.odd?)and(return_odds == true)
      result = result+string[i]
    elsif (i.even?)and(return_odds == false)
      result = result+string[i]
    end
  end
  return result
end
