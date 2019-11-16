#!/bin/bash -x

#AUTHOR:- ROHAN RAVINDRA KADAM
#DATE:- 16 NOV 2019

echo "Welcome to Tic tac toe"
BOARD_SIZE=9;
TOSS=0

declare -a board


function  boardValue(){
for(( board_index=1;board_index<=$BOARD_SIZE;board_index++  ))
do
board[$board_index]=" ";
done

echo ${board[1]} "|" ${board[2]} "|" ${board[3]}
echo "----------"
echo ${board[4]} "|" ${board[5]} "|" ${board[6]}
echo "----------"
echo ${board[7]} "|" ${board[8]} "|" ${board[8]}

}

function letterAssign(){
PLAYER1=' ';
PLAYER2=' ';
echo "Player1 wish to have  Character"
read char1;
PLAYER1=$char1;
echo $PLAYER1
function player2(){
echo "Player2 wish to have Character different then player1 "
read char2;
PLAYER2=$char2;
if [[ $PLAYER1 == $PLAYER2 ]]
then
player2
echo "Same Character Found"
#PLAYER2=$char2;
echo $PLAYER2
else 
echo "Different Character Got."
PLAYER=$char2
echo $PLAYER2
fi
}
player2
}

function toss(){
echo "Player call the toss Between 0 OR 1"
read toss
tossed=$(( RANDOM%2 ))

echo $tossed
TOSS=$tossed;
if [[ $TOSS -eq $toss  ]] 
then
  echo "Player 1 won the tossed" 
else
echo "Player 2 won the tossed"
fi
}

boardValue
toss
letterAssign



