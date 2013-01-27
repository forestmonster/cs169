class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless /^[RPSrps]{1}$/.match(game[0][1])
  raise NoSuchStrategyError unless /^[RPSrps]{1}$/.match(game[1][1])
  game[0][1].upcase!
  game[1][1].upcase!

  name01 = game[0][0]
  name02 = game[1][0]
  play_one = game[0][1]
  play_two = game[1][1]
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

def rps_tournament_winner(tournament)
  # YOUR CODE HERE
end

# Otherwise, return the name and move of the winning player. If both players
# play the same move, the first player is the winner.

#rps_game_winner [ ["Armando", "r"], ["Dave", "S"] ]
#rps_game_winner [ ["Armando", "T"], ["Dave", "S"] ]
