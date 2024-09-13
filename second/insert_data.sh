#!/bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo "$($PSQL "TRUNCATE teams, games")"

while IFS=, read -r year round winner opponent winner_goals opponent_goals; do
  if [[ $year != "year" ]]; then
    OUTPUT="$($PSQL "select team_id from teams where name = '$winner'")"
    if [[ -z $OUTPUT ]]; then
	    INSERT="$($PSQL "insert into teams(name) values('$winner');")"
    fi

    OUTPUT="$($PSQL "select team_id from teams where name = '$opponent'")"
    if [[ -z $OUTPUT ]]; then
	    INSERT="$($PSQL "insert into teams(name) values('$opponent');")"
    fi
    
    winner="$($PSQL "select team_id from teams where name = '$winner'")"
    opponent="$($PSQL "select team_id from teams where name = '$opponent'")"
    INSERT="$($PSQL "insert into games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) values ('$year','$round','$winner','$opponent','$winner_goals','$opponent_goals')")"

  fi
done < games.csv


