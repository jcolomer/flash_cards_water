
# Controller

class Controller

  def self.run
    welcome_message

    get_input_from_file

    until user_input == "exit" || ALL_CARDS.empty?
        play_next_round

          get_next_card
          display_definition_to_user
          get_user_input
          check_answer
            if user_input == Card.solution
              contratulations_message
              play_next_round
            else
              try_again_message
              get_user_input
              check_answer
            end

     end

    display_exit_message
    exit!


end


Controller.run

