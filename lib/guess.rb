require "pry"

class Guess
attr_reader :card,
            :response,
            :correct,
            :feedback

  def initialize(response, card)
    @card = card
    @response = response
    @feedback = feedback
  end

  def correct?
  if response == card.answer
    true
  else
    false
  end
  end

  def feedback
    if correct?
      "Correct!"
    else
      "Incorrect!"
    end
  end

end
