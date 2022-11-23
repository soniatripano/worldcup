#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != "year" ]]
  then
      GAME_ID=$($PSQL "SELECT game_id FROM games WHERE year='$YEAR' AND round='$ROUND' AND winner_id='$WINNER'")
      TEAM_ID_WINNER=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      TEAM_ID_OPPONENT=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

      if [[ -z $TEAM_ID_WINNER ]]
      then
        INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
        WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      else
        WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
      fi
      if [[ -z $TEAM_ID_OPPONENT ]]
      then
        INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
        OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      else
        OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
      fi

      
    if [[ -z $GAME_ID ]]
    then
        INSERT_YEAR=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES('$YEAR', '$ROUND', '$WINNER_ID', '$OPPONENT_ID', '$WINNER_GOALS', '$OPPONENT_GOALS')")
    fi
      
  fi
done
