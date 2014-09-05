class Controller

  def self.run
    View.welcome_message
    Model.parse

    until @user_input == "exit" #|| @all_cards.empty?
      # play_next_round
      @current_card = Model.pick_question
      # p @current_card
      View.display_definition_to_user(@current_card)
      @user_input = View.get_user_input
      self.check_answer(@user_input)
     end

    View.display_exit_message
  end

  def self.check_answer(user_input)
    # p @user_input
    if @user_input == @current_card.answer
      View.congratulations_message
    else
      View.try_again_message
      @user_input = View.get_user_input
      # p @user_input
      check_answer(@user_input)
    end
  end
end

class View
attr_accessor :user_input
  def self.welcome_message
    puts "Welcome to Flash Cards. Hit enter to start."
    @user_input = gets.chomp
    if @user_input.length == 0
      puts "Getting your first question..."
    else
      welcome_message
    end
  end


  def self.display_definition_to_user(card)
    puts card.definition
  end

  def self.get_user_input
    @user_input = gets.chomp
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
end

class Card
  attr_reader :definition, :answer
  def initialize(definition, answer)
    @definition = definition
    @answer = answer
  end
end

Controller.run



