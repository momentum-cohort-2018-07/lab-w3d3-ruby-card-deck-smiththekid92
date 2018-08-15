require "pry-byebug"
=begin
11 numbers (Ace = 1)
A Face values
A Suit
=end

class Card
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
    @rank_value_hash = {
      :A=>1,
      2=>2, 
      3=>3, 
      4=>4, 
      5=>5, 
      6=>6, 
      7=>7, 
      8=>8,
      9=>9,
      10=>10,
      :J=>11,
      :Q=>12,
      :K=>13
    }
  end

  def rank_value
    @rank_value_hash[@rank]
  end

  def suit
    @suit 
  end

  def rank
    @rank
  end

  def ace
    @ace
  end
  
  def greater_than?(other_card)
    rank_value > other_card.rank_value
  end

end

