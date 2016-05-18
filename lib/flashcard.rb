require './lib/guess'
require './lib/deck'
require './lib/round'

class Card

attr_reader :question,
            :answer

  def initialize(question, answer)
    @question = question
    @answer = answer
  end

end
