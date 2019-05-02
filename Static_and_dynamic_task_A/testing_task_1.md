### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby
### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

require_relative('card.rb')
class CardGame

# == should be used in stead of =
  def checkforAce(card) #naming convention is inconsistent
    if card.value = 1
      return true
    else
      return false
    end
  end

# dif should be def. typo.
  dif highest_card(card1 card2) #no comma between parameters
  if card1.value > card2.value  
    return card.name #the variable name card does not exist
  else
    card2 #no return value before card2 - it will still work.
  end
end
end #extra end should not be here.

def self.cards_total(cards) #function named incorrectly - this is not a class method.the self. not is not necessary.
  total # total should be equal to something. No value assigned.
  for card in cards
    total += card.value
    return "You have a total of" + total # return should be made after the end of the for loop. total should use string interpolation
  end
end


```
