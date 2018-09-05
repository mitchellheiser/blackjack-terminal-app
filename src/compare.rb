
    def compare(hand, deck, balance, dealerhand, dealercards, card_array, bet) #this method is how the winner is decided if neither the player or the dealer goes bust
        
        puts  "the total value of the dealers hand is #{dealercards.sum}"
         
        puts " the total value of your hand is #{card_array.sum}"
        if dealercards.sum >21
            puts "congrats the dealer went bust take your winnings"# this automaticaly runs if the dealer went bust

    elsif dealercards.sum >= card_array.sum#this runs if dealers cards value is greater then the players card without exceeding 21
            puts "It the Dealers win better luck next time"
        elsif card_array.sum > dealercards.sum#this runs if players cards value is greater then the dealers card without exceeding 21
            puts "congratulations take your winnings"
        end
        balance << (bet.to_i + bet.to_i)
    end