require './lib/flashcard'
require './lib/guess'
require './lib/deck'
require './lib/round'
require "pry"

card_1 = Card.new("What is 5 + 5?", "10")
card_2 = Card.new("What is Rachel's favorite animal?", "Red Panda")
card_3 = Card.new("What is Mike's middle name?", "nobody knows")
card_4 = Card.new("What cardboard cutout lives at Turing?", "Justin Bieber")
deck = Deck.new([card_1, card_2, card_3, card_4])
round = Round.new(deck)

# ready_to_quit = false
#
# input = gets
# until ready_to_quit
round.start
round.end

# end
