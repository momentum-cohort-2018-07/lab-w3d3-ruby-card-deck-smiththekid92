=begin
11 numbers (Ace = 1)
A Face values
A Suit
=end

class Card
  def that_card_has_a_suit(card.suit)
    card_hash = {
      diamonds: [ace, 2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king]
      clubs: [ace, 2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king]
      hearts: [ace, 2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king]
      spades: [ace, 2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king]
    }
    puts card.suit
  end

  def that_card_has_a_rank(card.rank)
    rank_hash = {
      [ace, 2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king]
    }
    puts card.rank
  end



end

