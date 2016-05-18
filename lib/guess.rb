require "pry"

class Guess
attr_reader :card,
            :response,
            :correct

  def initialize(response, card)
    @card = card
    @response = response
    @correct = correct
  end

  def correct?
  if response == @card.answer
    true
  # else response != @card.answer
  #   false
  end
  end

  def feedback
    if response == @card.answer
      "Correct!"
    else response != @card.answer
      "Incorrect!"
    end
  end

end
