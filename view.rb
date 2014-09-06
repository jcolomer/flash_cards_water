class View
attr_accessor :user_input
  def self.welcome_message
    puts "Welcome to Flash Cards. Hit enter to start."
    puts "__________________________________"

    `say "Welcome to Flash Cards. Hit enter to start."`
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
    `say "Yahhhh awesome epic gnarly nicely done"`
  end

  def self.try_again_message
    puts "Sorry, that was not correct. Please try again."
    `say "Dude. Pay attention. Seriously this is ridiculous"`
  end


  def self.display_exit_message
      puts "Thanks for playing Flash Cards!"
  end
end
