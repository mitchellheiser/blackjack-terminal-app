require 'rubycards'
include RubyCards

hand = Hand.new
deck = Deck.new
deck.shuffle!
hand.draw(deck, 2)

puts hand

i = 0
card_array = []
while i < hand.count
  card = hand.to_a[i].rank
  if card == "Jack"
     card = 10
  elsif card == "Ace"
     card = [11, 1].sample
  elsif card == "King"
     card = 10
  elsif card == "Queen"
     card = 10
  else
     card = hand.to_a[i].rank.to_i
  end
  card_array << card
  puts card
  i += 1
end

puts "Your total card value is #{card_array.sum}"