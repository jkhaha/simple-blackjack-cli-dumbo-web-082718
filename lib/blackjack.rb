def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here random between 1 and 11
  new_card = rand(1.11)
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
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  sum
  # code #initial_round here
end

def hit? (card_total)
  prompt_user
  if get_user_input == 'h'
    card_total += deal_card
  end
  card_total
  # code hit? here
end

def invalid_command
  puts "invalid"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  card_total = initial_round
  while card_total < 21
  card_total = hit?(card_total)
  card_total = display_card_total(card_total)
end
end_game(card_total)
end
end