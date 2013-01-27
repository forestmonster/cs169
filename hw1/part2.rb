class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  name01 = m1[0][0]
  name02 = m2[1][0]
  play_one = m1[0][1]
  play_two = m2[1][1]
  # Player One Rock
  if play_one == 'R' && play_two == "R"
    name01
  elsif play_one == 'R' && play_two == "P"
    name02
  elsif play_one == 'R' && play_two == "S"
    name01
  # Player One Paper
  elsif play_one == 'P' && play_two == "R"
    name01
  elsif play_one == 'P' && play_two == "P"
    name01
  elsif play_one == 'P' && play_two == "S"
    name02
  # Player One Scissors
  elsif play_one == 'S' && play_two == "R"
    name02
  elsif play_one == 'S' && play_two == "P"
    name02
  elsif play_one == 'S' && play_two == "S"
    name01
  else
    name01
  end
end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless /^[RPSrps]{1}$/.match(game[0][1])
  raise NoSuchStrategyError unless /^[RPSrps]{1}$/.match(game[1][1])
  game[0][1].upcase!
  game[1][1].upcase!

  puts "Game is a" + game.inspect

  name01 = game[0][0]
  name02 = game[1][0]
  play_one = game[0][1]
  play_two = game[1][1]
  # Player One Rock
  if play_one == 'R' && play_two == "R"
    puts name01
  elsif play_one == 'R' && play_two == "P"
    puts name02
  elsif play_one == 'R' && play_two == "S"
    puts name01
  # Player One Paper
  elsif play_one == 'P' && play_two == "R"
    puts name01
  elsif play_one == 'P' && play_two == "P"
    puts name01
  elsif play_one == 'P' && play_two == "S"
    puts name02
  # Player One Scissors
  elsif play_one == 'S' && play_two == "R"
    puts name02
  elsif play_one == 'S' && play_two == "P"
    puts name02
  elsif play_one == 'S' && play_two == "S"
    puts name01
  else
    puts name01
  end
end

def rps_tournament_winner(tournament)
  # YOUR CODE HERE
end

# Otherwise, return the name and move of the winning player. If both players
# play the same move, the first player is the winner.

#rps_game_winner [ ["Armando", "r"], ["Dave", "S"] ]
#rps_game_winner [ ["Armando", "T"], ["Dave", "S"] ]
