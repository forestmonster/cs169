# Part A: Write a method rps_game_winner that takes a two-element list and
# behaves as follows: If the number of players is not equal to 2, raise
# WrongNumberOfPlayersError.  If either player's strategy is something other
# than "R", "P" or "S" (case-insensitive), raise NoSuchStrategyError.
# Otherwise, return the name and move of the winning player. If both players
# play the same move, the first player is the winner.

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless /^[RPSrps]{1}$/.match(game[0][1])
  raise NoSuchStrategyError unless /^[RPSrps]{1}$/.match(game[1][1])

  # We expect to receive these as [ ["Bob", "R"], ["Armando", "P"] ]
  results = game[0][1].upcase + game[1][1].upcase

  # There are nine possible combinations. In only three of these does Player
  # Two win. Ties go to Player One.
  if /^(RP|PS|SR)$/.match(results)
    game[1]
  else
    game[0]
  end
end

def rps_tournament_winner(tournament)
  if tournament[0][0].is_a? String
    rps_game_winner(tournament)
  else
    rps_tournament_winner(
      [rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])]
    )
  end
end
