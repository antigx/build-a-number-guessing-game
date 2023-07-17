#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess -t --no-align -c"


echo "Enter yout username:"
read USERNAME

USER_DB=$($PSQL "select games_playeD, best_game from users where username = '$USERNAME'")

if [[ -z $USER_DB ]]
then
  USERNAME_INSERT_RESULT=$($PSQL "insert into users(username) values('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
fi

IFS="|" read GAMES_PLAYED BEST_GAME <<< $USER_DB

if [[ -z $GAMES_PLAYED ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo $GAMES_PLAYED


RANDOM_NUMBER="$(( RANDOM%1000 + 1 ))"
