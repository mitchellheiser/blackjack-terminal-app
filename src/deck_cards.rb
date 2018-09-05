class Card
  attr_accessor :rank, :suit
  def initialize(rank, suit)
    raise "Invalid card" unless(1..13).include? rank
    @rank = rank
    raise "Invalid suit" unless["spades", "hearts", "diamonds", "clubs"].include? suit
    @suit = suit
  end

  def value
    @rank > 10 ? 10 : @rank
  end

  def to_s 
    ["","A",2,3,4,5,6,7,8,9,10,"J","Q","K"][rank].to_s + 
    {spades: "♠", hearts: "♥", diamonds: "♦", clubs: "♣"}[suit.to_sym]
  end
end

class Deck
    attr_accessor :cards, :cards_used

  def initialize
    @cards = (1..13).to_a.product(["spades", "hearts", "diamonds", "clubs"]).collect{|n,s| Card.new(n,s)}
    @cards_used = []
  end

  def draw(n=1)
    draw = @cards.sample(n).each do |card|
      @cards_used.push @cards.delete(card)
    end
  end

  def cards_used 
    @cards - @cards_used
  end

end

deck = Deck.new
hand = deck.draw(2)
loop do
  puts "Your cards are: "
  puts hand
  value = hand.map(&:value).sum
  puts "Your hand's value is #{value}"
  if value > 21
    puts "Bust!"
    break
  end
  puts "Hit (H) or Stay (S)?"
  action = gets.chomp.downcase
  if action == "s"
    break
  elsif action == "h"
    hand += deck.draw
  end
end