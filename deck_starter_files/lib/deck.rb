=begin
A Deck has:
52 Cards
4 Suits - Hearts, Spades, Diamonds, Clubs
13 Ranks (lowest to highest) - Ace-King
=end

require_relative "card"
require "pry-byebug"


class Deck
  def initialize
    @deck = []
    #need to loop ranks and suits
    @ranks = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]
    @suits = [:clubs, :diamonds, :hearts, :spades] #order per tests
    # deck_builder
    deck_builder
  end
  
  def deck_builder 
    @suits.each do |suit|
      @ranks.each do |rank|
        #^^ loops deck to print rank and suit of cards per hash
        # binding.pry
        card = Card.new(rank,suit)
        @deck << card
      # puts @deck
      end
    end
  end

  def draw
  @deck.shift
  end

  def shuffle
  @deck.shuffle!
  end

  def cards_left
  @deck.length
  end

end