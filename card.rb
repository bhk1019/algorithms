class Card
  attr_accessor :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end

end

class Deck

  def initialize
    @cards = []
    [:spades, :hearts, :diamonds, :clubs].each do |i|
      [:ace, :jack, :queen, :king].each do |j|
        @cards << Card.new(j, i)
      end
      for k in (2..10)
        @cards << Card.new(k, i)
      end
    end

  end

  def shuffle
    @cards.shuffle!
  end

  def output
    @cards.each do |card|
      card.output_card
    end
  end

  def deal
    @cards.shift
  end


end

deck = Deck.new
#deck.shuffle
deck.output
deck.deal
deck.output