#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE TABLE games, teams")

# get teams
cat games.csv | while IFS=',' read -r year round winner opponent winner_goals opponent_goals
do
  if [[ $winner != winner && $opponent != opponent ]]
  then

    # check if winning team is in table 
    w=$($PSQL "SELECT name FROM teams WHERE name='$winner'")

    # if not add it
    if [[ -z $w ]]
    then
      echo $($PSQL "INSERT INTO teams(name) VALUES('$winner')")
    fi

    # check if opponent team is in table 
    o=$($PSQL "SELECT name FROM teams WHERE name='$opponent'")
    
    # if not add it
    if [[ -z $o ]]
    then
      echo $($PSQL "INSERT INTO teams(name) VALUES('$opponent')")
    fi
  fi
done


# get games
cat games.csv | while IFS=',' read -r year round winner opponent winner_goals opponent_goals
do
  if [[ $year != year ]]
  then
    # get winner id
    winner_id=$($PSQL "SELECT team_id FROM teams WHERE name='$winner'")

    # get opponent id
    opponent_id=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent'")

    echo $($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($year, '$round', $winner_id, $opponent_id, $winner_goals, $opponent_goals)")
  fi
done
