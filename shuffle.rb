class Card
  attr_accessor :suit, :value
  def initialize(suit, value)
    @suit = suit
    @value = value
  end
end

cards = []

suits = [:hearts, :diamonds, :spades, :clubs]
suits.each do |suit|
  (2..10).each do |value|
    cards << Card.new(suit, value)
  end
  cards << Card.new(suit, "J")
  cards << Card.new(suit, "Q")
  cards << Card.new(suit, "K")
  cards << Card.new(suit, "A")
end

puts "We have 52 cards, yes? #{cards.length}"
cards = cards.shuffle

your_card = cards.shift


puts ""
puts "Your card: #{your_card.inspect}"
puts ""
puts "Remaining cards: #{cards.count}"
