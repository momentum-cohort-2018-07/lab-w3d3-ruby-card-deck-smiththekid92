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
    @suits = [:clubs, :diamonds, :hearts, :spades]
    deck_builder
  end

  def deck_builder 
    @ranks.each do |rank|
      @suits.each do |suit|
        card = Card.new(rank, suit)
        @deck << card
      end
    end
  end

  def cards_left
    52
  end








end

