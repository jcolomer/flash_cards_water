#introduction: introduce the user to the game with instructions
#display_question:
# will prompt the user with the definition of the question
#"please enter answer:"
#receives the question, displays
#get_answer:
#user will be prompted for answer when question displays
#gets.chomp method to retrieve answer from user
# sends -> to check answer method
#response receiver: will display after get answer to let user go to next question or repeat

#card objects card.definition / card.answer


class View

  def self.welcome_message
    puts "Welcome to Flash Cards. Hit enter to start."
    if gets.chomp.length == 0
      puts "Getting your first question..."
    else
      welcome_message
    end

  end


  def self.display_definition_to_user(card)
    puts card.definition
  end

  def self.get_user_input
    user_response = gets.chomp.downcase!
  end

  def self.congratulations_message
    puts "Congratulations! You are correct."

  end

  def self.try_again_message
    puts "Sorry, that was not correct. Please try again."
  end


  def self.display_exit_message
      puts "Thanks for playing Flash Cards!"
  end
end

#-----TEST CARD OBJECT-------------
# class Card
#   attr_reader :answer, :definition
#   def initialize(definition, answer)
#     @definition = definition
#     @answer = answer
#   end
# end


# card1 = Card.new("How many legs does a spider have?", "eight")
# View.display_definition_to_user(card1)
