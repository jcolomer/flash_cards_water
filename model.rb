require 'pp'

class Card
  attr_reader :definition, :answer
  def initialize(definition, answer)
    @definition = definition
    @answer = answer
  end
end

ALL_CARDS = Array.new

def parse
  file = File.open("flashcard_samples.txt").readlines
  until file.length == 0
    one_card = file.shift(3)
    definition = one_card[0].chop
    answer = one_card[1].chop

    ALL_CARDS << Card.new(definition,answer)
  end
end


parse

ALL_CARDS.each do |card|
  puts card.definition
  puts
  puts card.answer
  puts
end
