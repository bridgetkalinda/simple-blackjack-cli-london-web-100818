def welcome
  # code #welcome here
  puts "Welcome to Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(11) + 1
end

def display_card_total(card)
  # code #display_card_total here
  puts "Your cards add up to #{card}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  method = gets.chomp
end

def end_game(card)
  # code #end_game here
  if card > 21
    puts "Sorry, you hit #{card}. Thanks for playing!"
  end
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(current_total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == "h"
    current_total += deal_card
  elsif input == "s"
    return current_total
  end
  end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = 0
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    card_total = display_card_total(card_total)
    
  end
end 
