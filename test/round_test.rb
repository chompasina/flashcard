require './lib/flashcard'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/flashcard'
require './lib/guess'
require './lib/deck'


class RoundTest < Minitest::Test
  def test_round_has_decks
  card_1 = Card.new("What is the capital of Alaska?", "Juneau")
  card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
  deck = Deck.new([card_1, card_2])
  round = Round.new(deck)
  round.deck
  assert_equal [card_1, card_2], round.decks
end
end
