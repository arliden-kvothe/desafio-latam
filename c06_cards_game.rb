class Card
  @@suits = [:diamond,:club,:spade,:heart]
  @@numbers = (1..13).to_a
  attr_reader :suit, :number
  def initialize
    @number = @@numbers.shift
    if @@numbers.empty?
      @suit = @@suits.shift
      @@numbers = (1..13).to_a
    else
      @suit = @@suits.first
    end
  end

  def show_card
    puts "suit: #{suit}, n: #{number}"
  end 
end

class Hand
  # cards - array of Card objects with length of 5
  def initialize(cards)
    @cards=cards
  end

  def drop_card(cards)
    cards << @cards.shift # agrega un elemento al inicio del arreglo original

  end

  def take_card(cards)
    @cards << cards.shift # agrega un elemento al inicio del arreglo de la mano
  end

  def shuffle(cards)
  end
end

cards = []

52.times do
  cards << Card.new
end

#puts "#{cards}"
cards = cards.shuffle

#cards.each {|card|
#  card.show_card
#}

cards_for_hand = cards.slice(0..4)

cards_for_hand.each {|card|
  card.show_card
}

hand = Hand.new(cards_for_hand)

hand.drop_card ...
hand.take_card ...

puts "#{cards.length}"















