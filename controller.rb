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
