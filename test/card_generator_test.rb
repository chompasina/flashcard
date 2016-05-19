require 'minitest/autorun'
require 'minitest/pride'
require './lib/flashcard'
require './lib/guess'
require './lib/deck'
require './lib/round'
require './lib/card_generator'
require "pry"

class CardGeneratorTest < Minitest::Test

  def test_cards_are_in_an_array
    filename = './lib/cards.txt'
    generator = CardGenerator.new(filename)
    assert_equal CardGenerator, generator.class
  end

  def test_card_generator_has_cards
    filename = './lib/cards.txt'
    cards = CardGenerator.new(filename).cards
    assert_equal 4, cards.count
  end

end
