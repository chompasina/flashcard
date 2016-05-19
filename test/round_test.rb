require './lib/flashcard'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/flashcard'
require './lib/guess'
require './lib/deck'
require './lib/round'
require "pry"

class RoundTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    @card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    @deck = Deck.new([@card_1, @card_2])
    @round = Round.new(@deck)
  end

  def test_round_has_decks
    assert_equal @deck, @round.deck
  end

  def test_round_accepts_guesses
    assert_equal [], @round.guesses
  end

  def test_round_pulls_current_card
    assert_equal @card_1, @round.current_card
  end

  def test_round_records_guess
    assert @round.guesses.empty?
    @round.record_guess("Juneau")
    assert_equal 1, @round.guesses.count
  end

  def test_how_many_guesses_in_a_round
    guess = @round.record_guess("Juneau")
    assert_equal 1, @round.guesses.count
  end

  def test_how_many_guesses_in_a_round
    guess = @round.record_guess("Juneau")
    assert_equal 1, @round.guesses.count
    assert_equal "Correct!", @round.guesses.first.feedback
  end

  def test_how_many_guesses_are_correct
    guess = @round.record_guess("Juneau")
    assert_equal 1, @round.guesses.count
    assert_equal "Correct!", @round.guesses.first.feedback
    assert_equal 1, @round.number_correct
  end

  def test_deck_records_guess_and_gives_last_feedback
    guess = @round.record_guess("2")
    assert_equal 1, @round.guesses.count
    assert_equal "Incorrect!", @round.guesses.last.feedback
  end

  def test_how_many_guesses_are_correct
    guess = @round.record_guess("Juneau")
    guess = @round.record_guess("2")
    assert_equal 1, @round.number_correct
  end

  def test_percent_correct
    guess = @round.record_guess("Juneau")
    guess = @round.record_guess("2")
    assert_equal 50, @round.percent_correct
  end
end
