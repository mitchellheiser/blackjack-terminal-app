
 def card_value(hand, deck, card_array)#this function is assigning values to the cards produced by ruby cards
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

 def shuffle(deck,hand)# shuffles the deck of card each time a new game is started to prevent repeats of the same outcomes
    3.times do 
        t= Time.now
    deck.shuffle!
    puts "Dealer shuffles the cards..."
    sleep(t + 0.5 - Time.now)
    end
 end 

 def initial_deal(deck,hand)# this is the function that deals the play their first two cards it mentions dealing cards to the banker but that isnt done until later line of code
    puts "Dealer has dealt your cards!"
    hand.draw(deck, 2)
    puts hand
    puts "Dealers cards are face down... dealing is now complete"
    end
     
    

def bust(deck,hand, card_array, balance, bet,dealerhand,dealercards)# this is the bust function it called when the players cards exceed the value of 21
   card_value(hand, deck, card_array)
    if card_array.sum > 21
        puts "You have gone bust!!"
         exit
            end
    end


    def play_options(deck,hand, card_array,balance)#this is the method that allows players to chose whether they want to hit or stay after looking at the intial cards dealt

       until card_array.sum >21 # the hit and stay function are in a loop so that the player may continualy request cards until the bust or break the loop by choosing stay 
        puts "Would you like to Hit or stay"
       input = gets.chomp.downcase
       if input == "hit" 
            puts "Dealer deals another card"
            hand.draw(deck, 1)
            card_value(hand, deck, card_array)
            puts hand
            
            puts "The total value of your hand is #{card_array.sum}"
            else input == "stay"
                card_value(hand, deck, card_array)
            puts hand
            puts "You have chosen to stay, it is now the dealers turn"
            break
        end
       end
    end


    def dealer_card_value(dealerhand, deck, dealercards)# the is function that defines the vaule for the cards in the dealers hand
        i = 0
      
      while i < dealerhand.count
      card = dealerhand.to_a[i].rank
      if card == "Jack"
     card = 10
      elsif card == "Ace"
      card = 11
      elsif card == "King"
       card = 10
      elsif card == "Queen"
       card = 10
      else
      card = dealerhand.to_a[i].rank.to_i
     end
       dealercards[i] = card

       i += 1
     end

    end
    
    def dealer_hand(dealerhand, deck, dealercards) #this is the method that draws the dealers intial 2 cards and displays them to the user
        dealer_card_value(dealerhand, deck, dealercards)
        dealerhand.draw(deck, 2)
        puts dealerhand 
        puts "Here is the dealer's hand"
    end

    

    def dealer_play_options(dealerhand, deck, dealercards, balance)#this function is how the dealer decides if it will hit or stay
        if dealercards.sum >16 
            puts "Dealer has chosen to stay"
        elsif dealercards.sum > 21 
        puts "Dealer has gone bust"
        elsif dealercards.sum <16
            
            puts "Dealer has chosen to hit"
            dealerhand.draw(deck, 1)
            puts dealerhand
            dealer_card_value(dealerhand, deck, dealercards)
        end
    end