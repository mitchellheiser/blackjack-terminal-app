
require "rubycards"
include RubyCards
#require "colorize"
class Player
    attr_accessor :name
  def initialize(name)
    @name = name
 end

end

def welcome(balance) # intitail start/ configure player names
  puts "Please enter a players name"
  #get user input name
  name = gets.chomp
  user = Player.new(name)
puts "Welcome to the casino #{user.name}"

end

def place_bet(balance, bet)# configures players bet and allows them to start the game
    puts "Please place a minimum bet of $25"
    bet = gets.chomp.to_i

    if bet < 25
       puts "Please increase your bet to be equal to or greater than 25"
    place_bet(balance, bet)
    else 
      puts "Lets play!!"
      balance << bet
      puts "New balance is $#{balance.sum}"
      end
end

  def exit
      puts "Thankyou please play again some time"
  
  end 


