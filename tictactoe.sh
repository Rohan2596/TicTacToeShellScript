#!/bin/bash -x

#AUTHOR:- ROHAN RAVINDRA KADAM
#DATE:- 16 NOV 2019

echo "Welcome to Tic tac toe"
BOARD_SIZE=9;
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
echo "Player2 wish to have Character"
read char2;
PLAYER2=$char2;
echo $PLAYER2 
}

boardValue
letterAssign



