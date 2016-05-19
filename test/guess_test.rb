require 'minitest/autorun'
require 'minitest/pride'
require './lib/flashcard'
require './lib/guess'
require 'pry'

class GuessTest < Minitest::Test

  def setup
    @card = Card.new("What is the capital of Alaska?", "Juneau")
    @guess = Guess.new("Juneau", @card)
  end

  def test_guess_has_a_card
    assert_equal @card, @guess.card
  end

  def test_guess_has_a_response
    assert_equal "Juneau", @guess.response
  end

  def test_guess_is_correct
    assert @guess.correct?
  end

  def test_correct_guess_gets_feedback
    assert_equal "Correct!", @guess.feedback
  end

  def test_incorrect_guess_gets_feedback
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)
    assert_equal "Incorrect!", guess.feedback
  end
end
