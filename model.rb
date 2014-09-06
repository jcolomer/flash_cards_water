class Model
  attr_accessor :all_cards
  @all_cards = Array.new

  def self.parse
    file = File.open("flashcard_samples.txt").readlines
    until file.length == 0
      one_card = file.shift(3)
      definition = one_card[0].chop
      answer = one_card[1].chop

      @all_cards << Card.new(definition,answer)

    end
    @all_cards
  end

  def self.pick_question
    @all_cards.shuffle!
    @all_cards.pop
  end

  def self.check_deck_empty?
    @all_cards.empty?
  end
end

class Card
  attr_reader :definition, :answer
  def initialize(definition, answer)
    @definition = definition
    @answer = answer
  end
end
