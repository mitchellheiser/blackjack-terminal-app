#imports modules/class
require_relative "player"
require_relative "cards"
require_relative "compare"

#required gems
require 'rubycards'
include RubyCards
#variables
hand = Hand.new
deck = Deck.new
dealerhand = Hand.new
dealercards = []
balance = []
card_array = []
bet= ''

def start_app(balance, bet, deck, hand, card_array, dealerhand, dealercards)  #this is the method that layout how the app runs
  card_array.clear
  dealercards.clear
  hand = Hand.new
  dealerhand = Hand.new
  deck = Deck.new
  welcome(balance)
  place_bet(balance, bet)
  shuffle(deck, hand)
  initial_deal(deck, hand)
  play_options(deck, hand, card_array, balance)
  if card_array.sum > 21
    bust(deck,hand, card_array, balance, bet,dealerhand,dealercards)#this ends the game if the player goes bust

  else
  dealer_hand(dealerhand, deck, dealercards )
  dealer_play_options(dealerhand, deck, dealercards, balance)
  compare(hand, deck, balance, dealerhand, dealercards, card_array, bet)
  end
end

start_app(balance, bet, deck, hand, card_array, dealerhand, dealercards)# this runs the app