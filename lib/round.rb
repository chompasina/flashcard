require './lib/flashcard'
require './lib/guess'
require './lib/deck'

class Round
attr_reader :deck,
            :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card = 0
  end

  def current_card
    deck.cards[@current_card]
  end

  def record_guess(response)
    @guesses << Guess.new(response, current_card)
    @guesses.last
  end
end
