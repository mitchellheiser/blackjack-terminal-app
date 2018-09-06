    class InvalidArugmentError <StandardError
    end

    def compare(hand, deck, balance, dealerhand, dealercards, card_array, bet) #this method is how the winner is decided if neither the player or the dealer goes bust
        
        puts  "the total value of the dealers hand is #{dealercards.sum}"
         
        puts " the total value of your hand is #{card_array.sum}"
        if dealercards.sum >21
            balance << balance.sum
            puts "congrats the dealer went bust take your winnings $#{balance.sum}"# this automaticaly runs if the dealer went bust

        elsif dealercards.sum >= card_array.sum#this runs if dealers cards value is greater then the players card without exceeding 21
           balance << -bet 
            puts "It the Dealers win better luck next time"
        elsif card_array.sum > dealercards.sum#this runs if players cards value is greater then the dealers card without exceeding 21
            balance << balance.sum
            puts "congratulations take your winnings $#{balance.sum}"
        
        end
        begin
           puts "would you like to play again please type yes or no"#this ask the player if they would like to play again if yes reloops the app if no terminates app
           response = gets.chomp.downcase
           raise InvalidArugmentError unless response == "yes" or response == "no"
           if  response == "yes"
            start_app(balance, bet, deck, hand, card_array, dealerhand, dealercards)
        
           else response == "no"
             puts "thank you for playing"
           end
        rescue InvalidArugmentError
           puts  "please enter either yes or no"
           retry 
        end
    end
