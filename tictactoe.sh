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
boardValue




