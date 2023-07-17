#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess -t --no-align -c"


USER(){
  echo -e "\nEnter your username:"
  read USERNAME

  USER_DB=$($PSQL "select games_playeD, best_game from users where username = '$USERNAME'")

  if [[ -z $USER_DB ]]
  then
    USERNAME_INSERT_RESULT=$($PSQL "insert into users(username) values('$USERNAME')")
    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  else
    IFS="|" read GAMES_PLAYED BEST_GAME <<< $USER_DB
    echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  fi

GAME
}

GAME(){
  RANDOM_NUMBER="$(( RANDOM%1000 + 1 ))"
  GUESSES=1
  echo $RANDOM_NUMBER
  echo -e "\nGuess the secret number between 1 and 1000:"
  until [[ $GUESSED_NUMBER -eq RANDOM_NUMBER ]]
  do
    read GUESSED_NUMBER
    while [[ ! $GUESSED_NUMBER =~ ^[0-9]+$ ]]
    do
      echo -e "\nThat is not an integer, guess again:"
      read GUESSED_NUMBER
    done
    
    if [[ $GUESSED_NUMBER > $RANDOM_NUMBER ]]
    then
      echo -e "\nIt's lower than that, guess again:"
      (( GUESSES++ ))
    elif [[ $GUESSED_NUMBER < $RANDOM_NUMBER ]]
    then
      echo -e "\nIt's higher than that, guess again:"
      (( GUESSES++ ))
    fi
  done
  INSERT
  echo -e "\nYou guessed it in $GUESSES tries. The secret number was $RANDOM_NUMBER. Nice job!"

}
INSERT() {
    if [[ -z $USER_DB ]]
    then 
      UPDATE_PRIMEIRO_JOGO=$($PSQL "UPDATE users SET best_game = $GUESSES, games_played = 1 WHERE username='$USERNAME'")
    else
      if [[ $BEST_GAME > $GUESSES ]]
      then
        UPDATE_BEST_GAME=$($PSQL "update users set best_game = $GUESSES, games_played = games_played + 1 where username = '$USERNAME' ")
      else
        UPDATE_BEST_GAME=$($PSQL "update users set games_played = games_played + 1 where username = '$USERNAME' ")
      fi
    fi
}

RANDOM_NUMBER="$(( RANDOM%1000 + 1 ))"

USER