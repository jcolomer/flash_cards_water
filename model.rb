class Model
  ALL_CARDS = Array.new

  def self.parse
    file = File.open("flashcard_samples.txt").readlines
    until file.length == 0
      one_card = file.shift(3)
      definition = one_card[0].chop
      answer = one_card[1].chop

      ALL_CARDS << Card.new(definition,answer)
    end
  end

  def self.pick_question
    ALL_CARDS.shuffle!

    ALL_CARDS.pop.definition
  end
end

class Card
  attr_reader :definition, :answer
  def initialize(definition, answer)
    @definition = definition
    @answer = answer
  end
end

#Driver Code
Model.parse
Model.pick_question
Model.pick_question
