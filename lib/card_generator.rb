require './lib/flashcard'
require "pry"


class CardGenerator

  attr_reader :filename,
              :cards

  def initialize(filename)
    @filename = filename
  end

  def cards
    file = File.read(@filename)
    array = file.split("\n").map do |line|
     line.split(",")
    end
      array.map do |element|
        cards = Card.new(element[0], element[1])
      end
  end
end
