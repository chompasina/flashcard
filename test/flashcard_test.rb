require 'minitest/autorun'
require 'minitest/pride'
require './lib/flashcard'

class CardTest < Minitest::Test

  def setup
    @card = Card.new("What is the capital of Alaska?", "Juneau")
  end

  def test_card_gives_question
    @card.question
    assert @card.question, "What is the capital of Alaska?"
  end

  def test_flashcard_gives_answer
    @card.answer
    assert @card.answer, "Juneau"
  end

  def test_guess_is_correct
    guess = Guess.new("Juneau", @card)
    guess.card
    guess.response
    guess.correct?
    guess.feedback
end
end
