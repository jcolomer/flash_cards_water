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



def introduction
  puts "Welcome to Flash Cards. Hit enter to start."
    if gets.chomp.length == 0
      puts "Getting your first question..."
      get_new_question
      display_question
    else
      introduction
    end

end

def get_new_question
  #ping controller
end


def display_question(question)
  puts question
  get_answer
end

def get_answer
  user_response = gets.chomp.downcase!
  #send to check answer method
end

def correct_answer?
  if answer
    get_new_method
    display_question
  else
    puts "Sorry, that was not the answer we were looking for...please try again."
    display_question
  end
end


def end_of_game
  if game_over
  puts "Thanks for playing Flash Cards!"
  end
end


p introduction


