card_array=[]

require 'rubycards'
include RubyCards
hand = Hand.new
deck = Deck.new

def card_value(hand, deck, card_array)
    i = 0
  
  while i < hand.count
   card = hand.to_a[i].rank
   if card == "Jack"
   card = 10
   elsif card == "Ace"
   card = 11
   elsif card == "King"
   card = 10
   elsif card == "Queen"
   card = 10
   else
   card = hand.to_a[i].rank.to_i
  end
   card_array[i] = card
   i += 1
  end
end

def play_options(hand, deck, card_array)
    until card_array.sum >21 
     puts " would you like to Hit or stay"
    input = gets.chomp.downcase
    if input == "hit" 
         puts" dealer deals 1 card"
         hand.draw(deck, 1)
         card_value(hand, deck, card_array)
         puts hand
         
         puts " the total value of your hand is #{card_array.sum}"
         else input == "stay"
             card_value(hand, deck, card_array)
         puts hand
         puts "you have chosen to stay it is now the dealers turn"
         break
     end
    end
 end

 play_options(hand, deck, card_array)