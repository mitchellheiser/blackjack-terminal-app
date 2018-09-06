card_array = [10, 4, 8] # example array of players hand just used to test the bust function

def bust(card_array)
     if card_array.sum > 21
         puts "you have gone bust"
          exit
     end
 end
 
 bust(card_array)