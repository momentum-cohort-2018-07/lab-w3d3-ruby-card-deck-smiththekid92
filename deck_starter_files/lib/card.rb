=begin
11 numbers (Ace = 1)
A Face values
A Suit
=end

class Card
  attr_accessor :rank
  attr_accessor :suit

  #initialized callouts for rank, suit, & a rank_value hash
  #also defines face card values based off hash
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

  #defines card rank_value
  def rank_value
    @rank_value_hash[@rank]
  end

  #defines that 'ace' is low and returns 'true' for less than any card other than ace
  def greater_than?(other_card)
    rank_value > other_card.rank_value
  end

  #defines that other card is equal (for deck test) (ie :A :spades == :A :spades in another deck, values will be the same but ID will be different)
  def == (other_card)
    self.rank == other_card.rank &&
    self.suit == other_card.suit
  end

end

