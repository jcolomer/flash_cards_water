class Controller

  def self.run
    system('clear')
    View.welcome_message
    Model.parse

    until @user_input == "exit" #|| Model.all_cards.empty?
      system('clear')
      @current_card = Model.pick_question
      # p @current_card
      View.display_definition_to_user(@current_card)
      @user_input = View.get_user_input
      self.check_answer(@user_input)
      break if Model.check_deck_empty?
     end
    system('clear')
    View.display_exit_message
  end

  def self.check_answer(user_input)
    # p @user_input
    if @user_input == "exit"
      return
    elsif @user_input == @current_card.answer
      View.congratulations_message
      gets.chomp
    else
      View.try_again_message
      @user_input = View.get_user_input
      # p @user_input
      check_answer(@user_input)
    end
  end
end
