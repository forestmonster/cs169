class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless /^[RPSrps]{1}$/.match(game[0][1])
  raise NoSuchStrategyError unless /^[RPSrps]{1}$/.match(game[1][1])
end

def rps_tournament_winner(tournament)
  # YOUR CODE HERE
end

# If the number of players is not equal to 2, raise WrongNumberOfPlayersError.
# If either player's strategy is something other than "R", "P" or "S"
# (case-insensitive), raise NoSuchStrategyError.
# Otherwise, return the name and move of the winning player. If both players
# play the same move, the first player is the winner.

rps_game_winner [ ["Armando", "T"], ["Dave", "S"] ]
