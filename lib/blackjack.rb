def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here random between 1 and 11
  new_card = rand(1..11)
  return new_card
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  hand = deal_card + deal_card
  display_card_total(hand)
  return hand
  # code #initial_round here
end

def hit? (hand)
  prompt_user
  input = get_user_input
  if input == 'h'
    hand += deal_card
  elsif input == "s"
    hand
  else
    invalid_command
  end 
  # code hit? here
end

def invalid_command
  puts "Sorry, not a valid command"
  get_user_input
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  hand = initial_round
  until hand > 21
  hand = hit?(hand)
  display_card_total(hand)
end
end_game(hand)
end