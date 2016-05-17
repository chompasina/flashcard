require 'minitest/autorun'
require 'minitest/pride'
require './lib/flashcard'

class CardTest < Minitest::Test
  def test_card_gives_question
    card = Card.new("What is the capital of Alaska?", "Juneau")
    card.question
    assert card.question, "What is the capital of Alaska?"
  end

  def test_flashcard_gives_answer
    card = Card.new("What is the capital of Alaska?", "Juneau")
    card.answer
    assert card.answer, "Juneau"
  end

  def test_guess_is_correct
    card = Card.new("What is the capital of Alaska?", "Juneau")
    guess = Guess.new("Juneau", card)
    guess.card
    #identifies card
    guess.response
    #user input
    guess.correct?
    #returns true
    guess.feedback
    #returns "Correct!"
end
end
