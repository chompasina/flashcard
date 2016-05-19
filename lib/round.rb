require "pry"

class Round
attr_reader :deck,
            :guesses,
            :number_correct

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card_number = 0
    @number_correct = 0
  end

  def current_card
    deck.cards[@current_card_number]
  end

  def record_guess(response)
    @guesses << Guess.new(response, current_card)
    g = @guesses.last
    @current_card_number += 1
    if g.correct?
      @number_correct += 1
    end
  end

  def percent_correct
    (number_correct.to_f / @guesses.count * 100).to_i
  end

  def start
    card_number = 0

    puts "Welcome! You're playing with #{deck.count} cards. \n--------------------------------------\n"
    deck.cards.each do |card|
      card_number += 1
      puts   "This is card number #{card_number} out of #{deck.count}."
      puts "Question: #{card.question}"
      response = gets.chomp
      record_guess(response)
      puts @guesses.last.feedback
    end
  end

    def end
      puts "  ****** Game over! ******   \n You had #{number_correct} guesses out of #{deck.count} for a score of #{percent_correct}%."
    end
end
