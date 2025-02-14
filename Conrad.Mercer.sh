#!/bin/bash

playableRow1=("i" "|" "i" "|" "i" "|" "i" "|" "i")
NonplayableRow1=("------------------")
playableRow2=("i" "|" "i" "|" "i" "|" "i" "|" "i")
NonplayableRow2=("------------------")
playableRow3=("i" "|" "i" "|" "i" "|" "i" "|" "i")
NonplayableRow3=("------------------")
playableRow4=("i" "|" "i" "|" "i" "|" "i" "|" "i")
NonplayableRow4=("------------------")
playableRow5=("i" "|" "i" "|" "i" "|" "i" "|" "i")
numbers=("1" "-" "2" "-" "3" "-" "4" "-" "5")
i=1
count=0
beginInventory=0
inventory=3



function _printBoard
{
	echo "----"${numbers[@]}
	echo "---------------------"
	echo "1.|" ${playableRow1[@]}
	echo "--|" ${NonplayableRow1[@]}
	echo "2.|" ${playableRow2[@]}
	echo "--|" ${NonplayableRow2[@]}
	echo "3.|" ${playableRow3[@]}
	echo "--|" ${NonplayableRow3[@]}
	echo "4.|" ${playableRow4[@]}
	echo "--|" ${NonplayableRow4[@]}
	echo "5.|" ${playableRow5[@]}
}

function _quit
{
	echo " "
	echo "Thanks for playing!"
	exit
}

function _playerMove
{

#echo "Column: $column  Row: $row Column3: ${playableRow1[4]}"
if [[ $column -eq 1 ]]; then
       if [[ $row -eq 1 && ${playableRow1[0]} == "i" ]]; then
           playableRow1[0]="O"
      
       elif [[ $row -eq 2 && ${playableRow1[2]} == "i" ]]; then
	     playableRow1[2]="O"

       elif [[ $row -eq 3 && ${playableRow1[4]} == "i" ]]; then
	     playableRow1[4]="O"
       
       elif [[ $row -eq 4 && ${playableRow1[6]} == "i" ]]; then
	     playableRow1[6]="O"
       
       elif [[ $row -eq 5 && ${playableRow1[8]} == "i" ]]; then
	     playableRow1[8]="O"
     else
	       echo "That space is already full. Try again."
	       _play
       fi		
elif [[ $column -eq 2 ]]; then
       if [[ $row -eq 1 && ${playableRow2[0]} == "i" ]]; then
           playableRow2[0]="O"
      
       elif [[ $row -eq 2 && ${playableRow2[2]} == "i" ]]; then
	     playableRow2[2]="O"
       
       elif [[ $row -eq 3 && ${playableRow2[4]} == "i" ]]; then
	     playableRow2[4]="O"
       
       elif [[ $row -eq 4 && ${playableRow2[6]} == "i" ]]; then
	     playableRow2[6]="O"
       
       elif [[ $row -eq 5 && ${playableRow2[8]} == "i" ]]; then
	     playableRow2[8]="O"

       else
	       echo "That space is already full. Try again."
	       _play

       fi
elif [[ $column -eq 3 ]]; then
       if [[ $row -eq 1 && ${playableRow3[0]} == "i" ]]; then
           playableRow3[0]="O"
      
       elif [[ $row -eq 2 && ${playableRow3[2]} == "i" ]]; then
	     playableRow3[2]="O"
       
       elif [[ $row -eq 3 && ${playableRow3[4]} == "i" ]]; then
	     playableRow3[4]="O"
       
       elif [[ $row -eq 4 && ${playableRow3[6]} == "i" ]]; then
	     playableRow3[6]="O"
       
       elif [[ $row -eq 5 && ${playableRow3[8]} == "i" ]]; then
	     playableRow3[8]="O"

       else
	       echo "That space is already full. Try again."
	       _play

       fi
elif [[ $column -eq 4 ]]; then
       if [[ $row -eq 1 && ${playableRow4[0]} == "i" ]]; then
           playableRow4[0]="O"
      
       elif [[ $row -eq 2 && ${playableRow4[2]} == "i" ]]; then
	     playableRow4[2]="O"
       
       elif [[ $row -eq 3 && ${playableRow4[4]} == "i" ]]; then
	     playableRow4[4]="O"
       
       elif [[ $row -eq 4 && ${playableRow4[6]} == "i" ]]; then
	     playableRow4[6]="O"
       
       elif [[ $row -eq 5 && ${playableRow4[8]} == "i" ]]; then
	     playableRow4[8]="O"

       else
	       echo "That space is already full. Try again."
	       _play

       fi
elif [[ $column -eq 5 ]]; then
       if [[ $row -eq 1 && ${playableRow5[0]} == "i" ]]; then
           playableRow5[0]="O"
      
       elif [[ $row -eq 2 && ${playableRow5[2]} == "i" ]]; then
	     playableRow5[2]="O"
       
       elif [[ $row -eq 3 && ${playableRow5[4]} == "i" ]]; then
	     playableRow5[4]="O"
       
       elif [[ $row -eq 4 && ${playableRow5[6]} == "i" ]]; then
	     playableRow5[6]="O"
       
       elif [[ $row -eq 5 && ${playableRow5[8]} == "i" ]]; then
	     playableRow5[8]="O"

       else
	       echo "That space is already full. Try again."
	       _play

       fi
elif [[ ${column} == [Bb] || ${column} == [Bb]"ack" ||  ${row} == [Qq] || ${row} == [Qq]"uit" ]]; then
	_play

elif [[ ${column} == [Qq] || ${column} == [Qq]"uit" ||  ${row} == [Qq] || ${row} == [Qq]"uit" ]]; then
	_quit
else
	echo "That is not an option. Try again!"
	_play

fi

}


function _winPlayerCondition
{
	#checks rows 
	if [[ ${playableRow1[0]} == "O" && ${playableRow1[2]} == "O" && ${playableRow1[4]} == "O" && ${playableRow1[6]} == "O" && ${playableRow1[8]} == "O" ]]; then
		echo "You Won! Good Game!"
		echo " "
		_quit
	
	elif [[ ${playableRow2[0]} == "O" && ${playableRow2[2]} == "O" && ${playableRow2[4]} == "O" && ${playableRow2[6]} == "O" && ${playableRow2[8]} == "O" ]]; then
		echo "You Won! Good Game!"
	        echo " "
		_quit

	elif [[ ${playableRow3[0]} == "O" && ${playableRow3[2]} == "O" && ${playableRow3[4]} == "O" && ${playableRow3[6]} == "O" && ${playableRow3[8]} == "O" ]]; then
		echo "You Won! Good Game!"
	        echo " "
		_quit

	elif [[ ${playableRow4[0]} == "O" && ${playableRow4[2]} == "O" && ${playableRow4[4]} == "O" && ${playableRow4[6]} == "O" && ${playableRow4[8]} == "O" ]]; then
		echo "You Won! Good Game!"
	        echo " "
		_quit

	elif [[ ${playableRow5[0]} == "O" && ${playableRow5[2]} == "O" && ${playableRow5[4]} == "O" && ${playableRow5[6]} == "O" && ${playableRow5[8]} == "O" ]]; then
		echo "You Won! Good Game!"
	        echo " "
		_quit

	#checks columns
	elif [[ ${playableRow1[0]} == "O" && ${playableRow2[0]} == "O" && ${playableRow3[0]} == "O" && ${playableRow4[0]} == "O" && ${playableRow5[0]} == "O" ]]; then
		echo "You Won! Good Game!"
		echo " "
		_quit
	
	elif [[ ${playableRow1[2]} == "O" && ${playableRow2[2]} == "O" && ${playableRow3[2]} == "O" && ${playableRow4[2]} == "O" && ${playableRow5[2]} == "O" ]]; then
		echo "You Won! Good Game!"
	        echo " "
		_quit

	elif [[ ${playableRow1[4]} == "O" && ${playableRow2[4]} == "O" && ${playableRow3[4]} == "O" && ${playableRow4[4]} == "O" && ${playableRow5[4]} == "O" ]]; then
		echo "You Won! Good Game!"
	        echo " "
		_quit

	elif [[ ${playableRow1[6]} == "O" && ${playableRow2[6]} == "O" && ${playableRow3[6]} == "O" && ${playableRow4[6]} == "O" && ${playableRow5[6]} == "O" ]]; then
		echo "You Won! Good Game!"
	        echo " "
		_quit

	elif [[ ${playableRow1[8]} == "O" && ${playableRow2[8]} == "O" && ${playableRow3[8]} == "O" && ${playableRow4[8]} == "O" && ${playableRow5[8]} == "O" ]]; then
		echo "You Won! Good Game!"
	        echo " "
		_quit

	#check diagonals
	elif [[ ${playableRow1[0]} == "O" && ${playableRow2[2]} == "O" && ${playableRow3[4]} == "O" && ${playableRow4[6]} == "O" && ${playableRow5[8]} == "O" ]]; then
		echo "You Won! Good Game!"
		echo " "
		_quit
	
	elif [[ ${playableRow1[8]} == "O" && ${playableRow2[6]} == "O" && ${playableRow3[4]} == "O" && ${playableRow4[2]} == "O" && ${playableRow5[0]} == "O" ]]; then
		echo "You Won! Good Game!"
		echo " "
		_quit


	fi
}

function _winBotCondition
{
	#checks rows 
	if [[ ${playableRow1[0]} == "X" && ${playableRow1[2]} == "X" && ${playableRow1[4]} == "X" && ${playableRow1[6]} == "X" && ${playableRow1[8]} == "X" ]]; then
		echo "You Won! Good Game!"
		echo " "
		_quit
	
	elif [[ ${playableRow2[0]} == "X" && ${playableRow2[2]} == "X" && ${playableRow2[4]} == "X" && ${playableRow2[6]} == "X" && ${playableRow2[8]} == "X" ]]; then
		echo "You Won! Good Game!"
	        echo " "
		_quit

	elif [[ ${playableRow3[0]} == "X" && ${playableRow3[2]} == "X" && ${playableRow3[4]} == "X" && ${playableRow3[6]} == "X" && ${playableRow3[8]} == "X" ]]; then
		echo "You Won! Good Game!"
	        echo " "
		_quit

	elif [[ ${playableRow4[0]} == "X" && ${playableRow4[2]} == "X" && ${playableRow4[4]} == "X" && ${playableRow4[6]} == "X" && ${playableRow4[8]} == "X" ]]; then
		echo "You Won! Good Game!"
	        echo " "
		_quit

	elif [[ ${playableRow5[0]} == "X" && ${playableRow5[2]} == "X" && ${playableRow5[4]} == "X" && ${playableRow5[6]} == "X" && ${playableRow5[8]} == "X" ]]; then
		echo "You Won! Good Game!"
	        echo " "
		_quit

	#checks columns
	elif [[ ${playableRow1[0]} == "X" && ${playableRow2[0]} == "X" && ${playableRow3[0]} == "X" && ${playableRow4[0]} == "X" && ${playableRow5[0]} == "X" ]]; then
		echo "You Won! Good Game!"
		echo " "
		_quit
	
	elif [[ ${playableRow1[2]} == "X" && ${playableRow2[2]} == "X" && ${playableRow3[2]} == "X" && ${playableRow4[2]} == "X" && ${playableRow5[2]} == "X" ]]; then
		echo "You Won! Good Game!"
	        echo " "
		_quit

	elif [[ ${playableRow1[4]} == "X" && ${playableRow2[4]} == "X" && ${playableRow3[4]} == "X" && ${playableRow4[4]} == "X" && ${playableRow5[4]} == "X" ]]; then
		echo "You Won! Good Game!"
	        echo " "
		_quit

	elif [[ ${playableRow1[6]} == "X" && ${playableRow2[6]} == "X" && ${playableRow3[6]} == "X" && ${playableRow4[6]} == "X" && ${playableRow5[6]} == "X" ]]; then
		echo "You Won! Good Game!"
	        echo " "
		_quit

	elif [[ ${playableRow1[8]} == "X" && ${playableRow2[8]} == "X" && ${playableRow3[8]} == "X" && ${playableRow4[8]} == "X" && ${playableRow5[8]} == "X" ]]; then
		echo "You Won! Good Game!"
	        echo " "
		_quit

	#check diagonals
	elif [[ ${playableRow1[0]} == "X" && ${playableRow2[2]} == "X" && ${playableRow3[4]} == "X" && ${playableRow4[6]} == "X" && ${playableRow5[8]} == "X" ]]; then
		echo "You Won! Good Game!"
		echo " "
		_quit
	
	elif [[ ${playableRow1[8]} == "X" && ${playableRow2[6]} == "X" && ${playableRow3[4]} == "X" && ${playableRow4[2]} == "X" && ${playableRow5[0]} == "X" ]]; then
		echo "You Won! Good Game!"
		echo " "
		_quit


	fi
}



function _bot
{
	#first row
	if [[  ${playableRow1[0]} == "O" && ${playableRow1[2]} == "O" && ${playableRow1[4]} == "O" && ${playableRow1[6]} == "O" && ${playableRow1[8]} == "i" ]]; then
		playableRow1[8]="X"
	elif [[  ${playableRow1[0]} == "O" && ${playableRow1[2]} == "O" && ${playableRow1[4]} == "O" && ${playableRow1[8]} == "O" && ${playableRow1[6]} == "i" ]]; then
		playableRow1[6]="X"
	elif [[  ${playableRow1[0]} == "O" && ${playableRow1[2]} == "O" && ${playableRow1[6]} == "O" && ${playableRow1[8]} == "O" && ${playableRow1[4]} == "i" ]]; then
		playableRow1[4]="X"
	elif [[  ${playableRow1[0]} == "O" && ${playableRow1[4]} == "O" && ${playableRow1[6]} == "O" && ${playableRow1[8]} == "O" && ${playableRow1[2]} == "i" ]]; then
		playableRow1[2]="X"
	elif [[  ${playableRow1[2]} == "O" && ${playableRow1[4]} == "O" && ${playableRow1[6]} == "O" && ${playableRow1[8]} == "O" && ${playableRow1[0]} == "i" ]]; then
		playableRow1[0]="X"

	#second row
	elif [[  ${playableRow2[0]} == "O" && ${playableRow2[2]} == "O" && ${playableRow2[4]} == "O" && ${playableRow2[6]} == "O" && ${playableRow2[8]} == "i" ]]; then
		playableRow2[8]="X"
	elif [[  ${playableRow2[0]} == "O" && ${playableRow2[2]} == "O" && ${playableRow2[4]} == "O" && ${playableRow2[8]} == "O" && ${playableRow2[6]} == "i" ]]; then
		playableRow2[6]="X"
	elif [[  ${playableRow2[0]} == "O" && ${playableRow2[2]} == "O" && ${playableRow2[6]} == "O" && ${playableRow2[8]} == "O" && ${playableRow2[4]} == "i" ]]; then
		playableRow2[4]="X"
	elif [[  ${playableRow2[0]} == "O" && ${playableRow2[4]} == "O" && ${playableRow2[6]} == "O" && ${playableRow2[8]} == "O" && ${playableRow2[2]} == "i" ]]; then
		playableRow2[2]="X"
	elif [[  ${playableRow2[2]} == "O" && ${playableRow2[4]} == "O" && ${playableRow2[6]} == "O" && ${playableRow2[8]} == "O" && ${playableRow2[0]} == "i" ]]; then
		playableRow2[0]="X"

	#third row
	elif [[  ${playableRow3[0]} == "O" && ${playableRow3[2]} == "O" && ${playableRow3[4]} == "O" && ${playableRow3[6]} == "O" && ${playableRow3[8]} == "i" ]]; then
		playableRow3[8]="X"
	elif [[  ${playableRow3[0]} == "O" && ${playableRow3[2]} == "O" && ${playableRow3[4]} == "O" && ${playableRow3[8]} == "O" && ${playableRow3[6]} == "i" ]]; then
		playableRow3[6]="X"
	elif [[  ${playableRow3[0]} == "O" && ${playableRow3[2]} == "O" && ${playableRow3[6]} == "O" && ${playableRow3[8]} == "O" && ${playableRow3[4]} == "i" ]]; then
		playableRow3[4]="X"
	elif [[  ${playableRow3[0]} == "O" && ${playableRow3[4]} == "O" && ${playableRow3[6]} == "O" && ${playableRow3[8]} == "O" && ${playableRow3[2]} == "i" ]]; then
		playableRow3[2]="X"
	elif [[  ${playableRow3[2]} == "O" && ${playableRow3[4]} == "O" && ${playableRow3[6]} == "O" && ${playableRow3[8]} == "O" && ${playableRow3[0]} == "i" ]]; then
		playableRow3[0]="X"

	#fourth row
	elif [[  ${playableRow4[0]} == "O" && ${playableRow4[2]} == "O" && ${playableRow4[4]} == "O" && ${playableRow4[6]} == "O" && ${playableRow4[8]} == "i" ]]; then
		playableRow4[8]="X"
	elif [[  ${playableRow4[0]} == "O" && ${playableRow4[2]} == "O" && ${playableRow4[4]} == "O" && ${playableRow4[8]} == "O" && ${playableRow4[6]} == "i" ]]; then
		playableRow4[6]="X"
	elif [[  ${playableRow4[0]} == "O" && ${playableRow4[2]} == "O" && ${playableRow4[6]} == "O" && ${playableRow4[8]} == "O" && ${playableRow4[4]} == "i" ]]; then
		playableRow2[4]="X"
	elif [[  ${playableRow4[0]} == "O" && ${playableRow4[4]} == "O" && ${playableRow4[6]} == "O" && ${playableRow4[8]} == "O" && ${playableRow4[2]} == "i" ]]; then
		playableRow2[2]="X"
	elif [[  ${playableRow4[2]} == "O" && ${playableRow4[4]} == "O" && ${playableRow4[6]} == "O" && ${playableRow4[8]} == "O" && ${playableRow4[0]} == "i" ]]; then
		playableRow4[0]="X"

	#fifth row
	elif [[  ${playableRow5[0]} == "O" && ${playableRow5[2]} == "O" && ${playableRow5[4]} == "O" && ${playableRow5[6]} == "O" && ${playableRow5[8]} == "i" ]]; then
		playableRow5[8]="X"
	elif [[  ${playableRow5[0]} == "O" && ${playableRow5[2]} == "O" && ${playableRow5[4]} == "O" && ${playableRow5[8]} == "O" && ${playableRow5[6]} == "i" ]]; then
		playableRow5[6]="X"
	elif [[  ${playableRow5[0]} == "O" && ${playableRow5[2]} == "O" && ${playableRow5[6]} == "O" && ${playableRow5[8]} == "O" && ${playableRow5[4]} == "i" ]]; then
		playableRow5[4]="X"
	elif [[  ${playableRow5[0]} == "O" && ${playableRow5[4]} == "O" && ${playableRow5[6]} == "O" && ${playableRow5[8]} == "O" && ${playableRow5[2]} == "i" ]]; then
		playableRow5[2]="X"
	elif [[  ${playableRow5[2]} == "O" && ${playableRow5[4]} == "O" && ${playableRow5[6]} == "O" && ${playableRow5[8]} == "O" && ${playableRow5[0]} == "i" ]]; then
		playableRow5[0]="X"
	
	
	#first column
	elif [[ ${playableRow1[0]} == "O" && ${playableRow2[0]} == "O" && ${playableRow3[0]} == "O" && ${playableRow4[0]} == "O" && ${playableRow5[0]} == "i" ]]; then
		playableRow5[0]="X"
	elif [[ ${playableRow1[0]} == "O" && ${playableRow2[0]} == "O" && ${playableRow3[0]} == "O" && ${playableRow5[0]} == "O" && ${playableRow4[0]} == "i" ]]; then
		playableRow4[0]="X"
	elif [[ ${playableRow1[0]} == "O" && ${playableRow2[0]} == "O" && ${playableRow4[0]} == "O" && ${playableRowr5[0]} == "O" && ${playableRow3[0]} == "i" ]]; then
		playableRow3[0]="X"
	elif [[ ${playableRow1[0]} == "O" && ${playableRow3[0]} == "O" && ${playableRow4[0]} == "O" && ${playableRow5[0]} == "O" && ${playableRow2[0]} == "i" ]]; then
		playableRow2[0]="X"
	elif [[ ${playableRow2[0]} == "O" && ${playableRow3[0]} == "O" && ${playableRow4[0]} == "O" && ${playableRow5[0]} == "O" && ${playableRow1[0]} == "i" ]]; then
		playableRow1[0]="X"

	#second column
	elif [[ ${playableRow1[2]} == "O" && ${playableRow2[2]} == "O" && ${playableRow3[2]} == "O" && ${playableRow4[2]} == "O" && ${playableRow5[2]} == "i" ]]; then
		playableRow5[2]="X"
	elif [[ ${playableRow1[2]} == "O" && ${playableRow2[2]} == "O" && ${playableRow3[2]} == "O" && ${playableRow5[2]} == "O" && ${playableRow4[2]} == "i" ]]; then
		playableRow4[2]="X"
	elif [[ ${playableRow1[2]} == "O" && ${playableRow2[2]} == "O" && ${playableRow4[2]} == "O" && ${playableRow5[2]} == "O" && ${playableRow3[2]} == "i" ]]; then
		playableRow3[2]="X"
	elif [[ ${playableRow1[2]} == "O" && ${playableRow3[2]} == "O" && ${playableRow4[2]} == "O" && ${playableRow5[2]} == "O" && ${playableRow2[2]} == "i" ]]; then
		playableRow2[2]="X"
	elif [[ ${playableRow2[2]} == "O" && ${playableRow3[2]} == "O" && ${playableRow4[2]} == "O" && ${playableRow5[2]} == "O" && ${playableRow1[2]} == "i" ]]; then
		playableRow1[2]="X"

	#third column
	elif [[ ${playableRow1[4]} == "O" && ${playableRow2[4]} == "O" && ${playableRow3[4]} == "O" && ${playableRow4[4]} == "O" && ${playableRow5[4]} == "i" ]]; then
		playableRow5[4]="X"
	elif [[ ${playableRow1[4]} == "O" && ${playableRow2[4]} == "O" && ${playableRow3[4]} == "O" && ${playableRow5[4]} == "O" && ${playableRow4[4]} == "i" ]]; then
		playableRow4[4]="X"
	elif [[ ${playableRow1[4]} == "O" && ${playableRow2[4]} == "O" && ${playableRow4[4]} == "O" && ${playableRow5[4]} == "O" && ${playableRow3[4]} == "i" ]]; then
		playableRow3[4]="X"
	elif [[ ${playableRow1[4]} == "O" && ${playableRow3[4]} == "O" && ${playableRow4[4]} == "O" && ${playableRow5[4]} == "O" && ${playableRow2[4]} == "i" ]]; then
		playableRow2[4]="X"
	elif [[ ${playableRow2[4]} == "O" && ${playableRow3[4]} == "O" && ${playableRow4[4]} == "O" && ${playableRow5[4]} == "O" && ${playableRow1[4]} == "i" ]]; then
		playableRow1[4]="X"

	#fourth column
	elif [[ ${playableRow1[6]} == "O" && ${playableRow2[6]} == "O" && ${playableRow3[6]} == "O" && ${playableRow4[6]} == "O" && ${playableRow5[6]} == "i" ]]; then
		playableRow5[6]="X"
	elif [[ ${playableRow1[6]} == "O" && ${playableRow2[6]} == "O" && ${playableRow3[6]} == "O" && ${playableRow5[6]} == "O" && ${playableRow4[6]} == "i" ]]; then
		playableRow4[6]="X"
	elif [[ ${playableRow1[6]} == "O" && ${playableRow2[6]} == "O" && ${playableRow4[6]} == "O" && ${playableRow5[6]} == "O" && ${playableRow3[6]} == "i" ]]; then
		playableRow3[6]="X"
	elif [[ ${playableRow1[6]} == "O" && ${playableRow3[6]} == "O" && ${playableRow4[6]} == "O" && ${playableRow5[6]} == "O" && ${playableRow2[6]} == "i" ]]; then
		playableRow2[6]="X"
	elif [[ ${playableRow2[6]} == "O" && ${playableRow3[6]} == "O" && ${playableRow4[6]} == "O" && ${playableRow5[6]} == "O" && ${playableRow1[6]} == "i" ]]; then
		playableRow1[6]="X"

	#fifth column
	elif [[ ${playableRow1[8]} == "O" && ${playableRow2[8]} == "O" && ${playableRow3[8]} == "O" && ${playableRow4[8]} == "O" && ${playableRow5[8]} == "i" ]]; then
		playableRow5[8]="X"
	elif [[ ${playableRow1[8]} == "O" && ${playableRow2[8]} == "O" && ${playableRow3[8]} == "O" && ${playableRow5[8]} == "O" && ${playableRow4[8]} == "i" ]]; then
		playableRow4[8]="X"
	elif [[ ${playableRow1[8]} == "O" && ${playableRow2[8]} == "O" && ${playableRow4[8]} == "O" && ${playableRow5[8]} == "O" && ${playableRow3[8]} == "i" ]]; then
		playableRow3[8]="X"
	elif [[ ${playableRow1[8]} == "O" && ${playableRow3[8]} == "O" && ${playableRow4[8]} == "O" && ${playableRow5[8]} == "O" && ${playableRow2[8]} == "i" ]]; then
		playableRow2[8]="X"
	elif [[ ${playableRow2[8]} == "O" && ${playableRow3[8]} == "O" && ${playableRow4[8]} == "O" && ${playableRow5[8]} == "O" && ${playableRow1[8]} == "i" ]]; then
		playableRow1[8]="X"

	#check diagonal L->R
	elif [[ ${playableRow1[0]} == "O" && ${playableRow2[2]} == "O" && ${playableRow3[4]} == "O" && ${playableRow4[6]} == "O" && ${playableRow5[8]} == "i" ]]; then
		playableRow5[8]="X"
	elif [[ ${playableRow1[0]} == "O" && ${playableRow2[2]} == "O" && ${playableRow3[4]} == "O" && ${playableRow5[8]} == "O" && ${playableRow4[6]} == "i" ]]; then
		playableRow4[6]="X"
	elif [[ ${playableRow1[0]} == "O" && ${playableRow2[2]} == "O" && ${playableRow4[6]} == "O" && ${playableRow5[8]} == "O" && ${playableRow3[4]} == "i" ]]; then
		playableRow3[4]="X"
	elif [[ ${playableRow1[0]} == "O" && ${playableRow3[4]} == "O" && ${playableRow4[6]} == "O" && ${playableRow5[8]} == "O" && ${playableRow2[2]} == "i" ]]; then
		playableRow2[2]="X"
	elif [[ ${playableRow2[2]} == "O" && ${playableRow3[4]} == "O" && ${playableRow4[6]} == "O" && ${playableRow5[8]} == "O" && ${playableRow2[2]} == "i" ]]; then
		playableRow1[0]="X"

	#check diagonal R->L
	elif [[ ${playableRow1[8]} == "O" && ${playableRow2[6]} == "O" && ${playableRow3[4]} == "O" && ${playableRow4[2]} == "O" && ${playableRow5[0]} == "i" ]]; then
		playableRow5[0]="X"
	elif [[ ${playableRow1[8]} == "O" && ${playableRow2[6]} == "O" && ${playableRow3[4]} == "O" && ${playableRow5[0]} == "O" && ${playableRow4[2]} == "i" ]]; then
		playableRow4[2]="X"
	elif [[ ${playableRow1[8]} == "O" && ${playableRow2[6]} == "O" && ${playableRow4[2]} == "O" && ${playableRow5[0]} == "O" && ${playableRow3[4]} == "i" ]]; then
		playableRow3[4]="X"
	elif [[ ${playableRow1[8]} == "O" && ${playableRow3[4]} == "O" && ${playableRow4[2]} == "O" && ${playableRow5[0]} == "O" && ${playableRow2[6]} == "i" ]]; then
		playableRow2[6]="X"
	elif [[ ${playableRow2[6]} == "O" && ${playableRow3[4]} == "O" && ${playableRow4[2]} == "O" && ${playableRow5[0]} == "O" && ${playableRow2[8]} == "i" ]]; then
		playableRow1[0]="X"


	elif [[ ${playableRow3[4]} == "i" ]]; then
		playableRow3[4]="X"

	elif [[ ${playableRow1[0]} == "i" ||  ${playableRow5[0]} == "i" ||  ${playableRow1[8]} == "i" ||  ${playableRow5[8]} == "i" ]]; then
		random=$((RANDOM%4+1))
		if [[ ${random} == 1 && ${playableRow1[0]} == "i" ]]; then
			playableRow1[0]="X"

		elif [[ ${random} == 2 && ${playableRow5[0]} == "i" ]]; then
			playableRow5[0]="X"

		elif [[ ${random} == 3 && ${playableRow1[8]} == "i" ]]; then
			playableRow1[8]="X"

		elif [[ ${random} == 4 && ${playableRow5[8]} == "i" ]]; then
			playableRow5[8]="X"

		elif [[ ${playableRow1[0]} == "i" ]]; then
			playableRow1[0]="X"

		elif [[ ${playableRow5[0]} == "i" ]]; then
			playableRow5[0]="X"

		elif [[ ${playableRow1[8]} == "i" ]]; then
			playableRow1[8]="X"

		elif [[ ${playableRow5[8]} == "i" ]]; then
			playableRow5[8]="X"

		fi
	
	else
		count=0
		while [[ ${count} -eq 0 ]]; do
			random2=$((RANDOM%54+1))
		#	echo "${random2}"
			if [[ ${random2} -eq 1 && ${playableRow1[2]} -eq "i" || ${random2} -eq 21 && ${playableRow1[2]} -eq "i" ]]; then
				playableRow1[2]="X"
				((count++))
			elif [[ ${random2} -eq 2 && ${playableRow1[4]} -eq "i"  || ${random2} -eq 22 && ${playableRow1[4]} -eq "i" ]]; then
				playableRow1[4]="X"
				((count++))
			elif [[ ${random2} -eq 3 && ${playableRow1[6]} -eq "i"  || ${random2} -eq 23 && ${playableRow1[6]} -eq "i" ]]; then
				playableRow1[6]="X"
				((count++))
			elif [[ ${random2} -eq 4 && ${playableRow2[0]} -eq "i"  || ${random2} -eq 24 && ${playableRow2[0]} -eq "i" ]]; then
				playableRow2[0]="X"
				((count++))
			elif [[ ${random2} -eq 5 && ${playableRow2[2]} -eq "i"  || ${random2} -eq 25 && ${playableRow2[2]} -eq "i" ]]; then
				playableRow2[2]="X"
				((count++))
			elif [[ ${random2} -eq 6 && ${playableRow2[4]} -eq "i"  || ${random2} -eq 26 && ${playableRow2[4]} -eq "i" ]]; then
				playableRow2[4]="X"
				((count++))
			elif [[ ${random2} -eq 7 && ${playableRow2[6]} -eq "i"  || ${random2} -eq 27 && ${playableRow2[6]} -eq "i" ]]; then
				playableRow2[6]="X"
				((count++))
			elif [[ ${random2} -eq 8 && ${playableRow2[8]} -eq "i"  || ${random2} -eq 28 && ${playableRow2[8]} -eq "i" ]]; then
				playableRow2[8]="X"
				((count++))
			elif [[ ${random2} -eq 9 && ${playableRow3[0]} -eq "i"  || ${random2} -eq 29 && ${playableRow3[0]} -eq "i" ]]; then
				playableRow3[0]="X"
				((count++))
			elif [[ ${random2} -eq 10 && ${playableRow3[2]} -eq "i"  || ${random2} -eq 30 && ${playableRow3[2]} -eq "i" ]]; then
				playableRow3[2]="X"
				((count++))
			elif [[ ${random2} -eq 11 && ${playableRow3[6]} -eq "i"  || ${random2} -eq 31 && ${playableRow3[6]} -eq "i"  ]]; then
				playableRow3[6]="X"
				((count++))
			elif [[ ${random2} -eq 12 && ${playableRow3[8]} -eq "i"  || ${random2} -eq 32 && ${playableRow3[8]} -eq "i" ]]; then
				playableRow3[8]="X"
				((count++))
			elif [[ ${random2} -eq 13 && ${playableRow4[0]} -eq "i"  || ${random2} -eq 33 && ${playableRow4[0]} -eq "i" ]]; then
				playableRow4[0]="X"
				((count++))
			elif [[ ${random2} -eq 14 && ${playableRow4[2]} -eq "i"  || ${random2} -eq 34 && ${playableRow4[2]} -eq "i" ]]; then
				playableRow4[2]="X"
				((count++))
			elif [[ ${random2} -eq 15 && ${playableRow4[4]} -eq "i"  || ${random2} -eq 35 && ${playableRow4[4]} -eq "i" ]]; then
				playableRow4[4]="X"
				((count++))
			elif [[ ${random2} -eq 16 && ${playableRow4[6]} -eq "i"  || ${random2} -eq 36 && ${playableRow4[6]} -eq "i" ]]; then
				playableRow4[6]="X"
				((count++))
			elif [[ ${random2} -eq 17 && ${playableRow4[8]} -eq "i"  || ${random2} -eq 37 && ${playableRow4[8]} -eq "i" ]]; then
				playableRow4[8]="X"
				((count++))
			elif [[ ${random2} -eq 18 && ${playableRow5[2]} -eq "i"  || ${random2} -eq 38 && ${playableRow5[2]} -eq "i" ]]; then
				playableRow5[2]="X"
				((count++))
			elif [[ ${random2} -eq 19 && ${playableRow5[4]} -eq "i"  || ${random2} -eq 39 && ${playableRow5[4]} -eq "i" ]]; then
				playableRow5[4]="X"
				((count++))
			elif [[ ${random2} -eq 20 && ${playableRow5[6]} -eq "i"  || ${random2} -eq 40 && ${playableRow5[6]} -eq "i" ]]; then
				playableRow5[6]="X"
				((count++))
			elif [[ ${random2} -eq 41 && ${playableRow1[8]} != "i" && ${playableRow1[1]} != "i" ]]; then
				tempBot=${playableRow1[8]}
				playableRow1[8]="${playableRow1[0]}"
            			playableRow1[0]="${tempBot}"
				echo "I swapped two characters!"
				((count++))
			elif [[ ${random2} -eq 42 && ${playableRowr5[8]} != "i" && ${playableRow1[1]} != "i" ]]; then
				tempBot=${playableRow5[8]}
				playableRow5[8]="${playableRow1[0]}"
            			playableRow1[0]="${tempBot}"
				echo "I swapped two characters!"
				((count++))
			elif [[ ${random2} -eq 43 && ${playableRow5[0]} != "i" && ${playableRow1[1]} != "i" ]]; then
				tempBot=${playableRow5[0]}
				playableRow5[0]="${playableRow1[0]}"
            			playableRow1[0]="${tempBot}"
				echo "I swapped two characters!"
				((count++))
			elif [[ ${random2} -eq 44 && ${playableRowr5[8]} != "i" && ${playableRow1[8]} != "i" ]]; then
				tempBot=${playableRow5[8]}
				playableRow5[8]="${playableRow1[8]}"
            			playableRow1[8]="${tempBot}"
				echo "I swapped two characters!"
				((count++))
			elif [[ ${random2} -eq 45 && ${playableRow5[0]} != "i" && ${playableRow1[8]} != "i" ]]; then
				tempBot=${playableRow5[0]}
				playableRow5[0]="${playableRow1[8]}"
            			playableRow1[8]="${tempBot}"
				echo "I swapped two characters!"
				((count++))
			elif [[ ${random2} -eq 46 && ${playableRow5[0]} != "i" && ${playableRow5[8]} != "i" ]]; then
				tempBot=${playableRow5[0]}
				playableRow5[0]="${playableRow5[8]}"
            			playableRow5[8]="${tempBot}"
				echo "I swapped two characters!"
				((count++))
			elif [[ ${random2} -eq 47 && ${playableRow2[6]} != "i" && ${playableRow2[2]} != "i" ]]; then
				tempBot=${playableRow2[6]}
				playableRow2[6]="${playableRow2[2]}"
            			playableRow2[2]="${tempBot}"
				echo "I swapped two characters!"
				((count++))
			elif [[ ${random2} -eq 48 && ${playableRowr4[6]} != "i" && ${playableRow2[2]} != "i" ]]; then
				tempBot=${playableRow4[6]}
				playableRow4[6]="${playableRow2[2]}"
            			playableRow2[2]="${tempBot}"
				echo "I swapped two characters!"
				((count++))
			elif [[ ${random2} -eq 49 && ${playableRow4[2]} != "i" && ${playableRow2[2]} != "i" ]]; then
				tempBot=${playableRow4[2]}
				playableRow4[2]="${playableRow2[2]}"
            			playableRow2[2]="${tempBot}"
				echo "I swapped two characters!"
				((count++))
			elif [[ ${random2} -eq 50 && ${playableRowr4[6]} != "i" && ${playableRow2[6]} != "i" ]]; then
				tempBot=${playableRow4[6]}
				playableRow4[6]="${playableRow2[6]}"
            			playableRow2[6]="${tempBot}"
				echo "I swapped two characters!"
				((count++))
			elif [[ ${random2} -eq 51 && ${playableRow4[2]} != "i" && ${playableRow2[6]} != "i" ]]; then
				tempBot=${playableRow4[2]}
				playableRow4[2]="${playableRow2[6]}"
            			playableRow2[6]="${tempBot}"
				echo "I swapped two characters!"
				((count++))
			elif [[ ${random2} -eq 52 && ${playableRow4[2]} != "i" && ${playableRow4[4]} != "i" ]]; then
				tempBot=${playableRow4[4]}
				playableRow4[4]="${playableRow2[6]}"
            			playableRow2[6]="${tempBot}"
				echo "I swapped two characters!"
				((count++))
			elif [[ ${random2} -eq 53 ]]; then
				playableRow1[2]="i"
            			playableRow1[4]="i"
				playableRow1[6]="i"
				playableRow2[2]="i"
            			playableRow2[4]="i"
				playableRow2[6]="i"
				playableRow3[2]="i"
            			playableRow3[4]="i"
				playableRow3[6]="i"
				playableRow4[2]="i"
            			playableRow4[4]="i"
				playableRow4[6]="i"
				playableRow5[2]="i"
            			playableRow5[4]="i"
				playableRow5[6]="i"
				echo "I destroyed three Rows!"
				((count++))

			elif [[ ${random2} -eq 54 ]]; then
				playableRow2[0]="i"
            			playableRow3[0]="i"
				playableRow4[0]="i"
				playableRow2[2]="i"
            			playableRow3[2]="i"
				playableRow4[2]="i"
				playableRow2[4]="i"
            			playableRow3[4]="i"
				playableRow4[4]="i"
				playableRow2[6]="i"
            			playableRow3[6]="i"
				playableRow4[6]="i"
				playableRow2[8]="i"
            			playableRow3[8]="i"
				playableRow4[8]="i"
				echo "I destroyed three Columns!"
				((count++))

			fi
		done
	fi
}

function _swapTopItem
{
	echo " "
	echo "You are using the item: \"SwapOuterCorners\""
	echo "Which column and row would you want to swap?"
	echo " "
	echo "Column(1 or 5): "
	read columnSwap
	echo " "
	echo "Row(1 or 5): "
	read rowSwap

	echo " "
	echo "Which column would you swap to?"
	echo " "
	echo "Swapped column(1 or 5): "
	read column1
	echo " "
	echo "Swapped row(1 or 5): "
	read row1

	if [[ ${columnSwap} -eq 1 && ${rowSwap} -eq 1 && ${playableRow1[0]} != "i" ]]; then
		if [[ ${column1} -eq 1 && ${row1} -eq 5 && ${playableRow1[8]} != "i" ]]; then
           		temp="${playableRow1[8]}"
            		playableRow1[8]="${playableRow1[0]}"
            		playableRow1[0]="${temp}"
		elif [[ ${column1} -eq 5 && ${row1} -eq 5 && ${playableRow5[8]} != "i" ]]; then
           		temp="${playableRow1[0]}"
            		playableRow1[0]="${playableRow5[8]}"
            		playableRow5[8]="${temp}"
		elif [[ ${column1} -eq 5 && ${row1} -eq 1 && ${playableRow5[0]} != "i" ]]; then
           		temp="${playableRow1[0]}"
            		playableRow1[0]="${playableRow5[0]}"
            		playableRow5[0]="${temp}"

		fi

	elif [[ ${columnSwap} -eq 1 && ${rowSwap} -eq 5 && ${playableRow1[8]} != "i" ]]; then
		if [[ ${column1} -eq 1 && ${row1} -eq 1 && ${playableRow1[0]} != "i" ]]; then
           		temp="${playableRow1[8]}"
            		playableRow1[8]="${playableRow1[0]}"
            		playableRow1[0]="${temp}"
		elif [[ ${column1} -eq 5 && ${row1} -eq 5 && ${playableRow5[8]} != "i" ]]; then
           		temp="${playableRow1[8]}"
            		playableRow1[8]="${playableRow5[8]}"
            		playableRow5[8]="${temp}"
		elif [[ ${column1} -eq 5 && ${row1} -eq 1 && ${playableRow5[0]} != "i" ]]; then
           		temp="${playableRow1[8]}"
            		playableRow1[8]="${playableRow5[0]}"
            		playableRow5[0]="${temp}"

		fi

	elif [[ ${columnSwap} -eq 5 && ${rowSwap} -eq 1 && ${playableRow5[0]} != "i" ]]; then
		if [[ ${column1} -eq 1 && ${row1} -eq 1 && ${playableRow1[0]} != "i" ]]; then
           		temp="${playableRow5[0]}"
            		playableRow5[0]="${playableRow1[0]}"
            		playableRow1[0]="${temp}"
		elif [[ ${column1} -eq 5 && ${row1} -eq 5 && ${playableRow5[8]} != "i" ]]; then
           		temp="${playableRow5[0]}"
            		playableRow5[0]="${playableRow5[8]}"
            		playableRow5[8]="${temp}"
		elif [[ ${column1} -eq 1 && ${row1} -eq 5 && ${playableRow1[8]} != "i" ]]; then
           		temp="${playableRow5[0]}"
            		playableRow5[0]="${playableRow1[8]}"
            		playableRow1[8]="${temp}"

		fi

	elif [[ ${columnSwap} -eq 5 && ${rowSwap} -eq 5 && ${playableRow5[8]} != "i" ]]; then
		if [[ ${column1} -eq 1 && ${row1} -eq 1 && ${playableRow1[0]} != "i" ]]; then
           		temp="${playableRow5[8]}"
            		playableRow5[8]="${playableRow1[0]}"
            		playableRow1[0]="${temp}"
		elif [[ ${column1} -eq 5 && ${row1} -eq 1 && ${playableRow5[0]} != "i" ]]; then
           		temp="${playableRow5[8]}"
            		playableRow5[8]="${playableRow5[0]}"
            		playableRow5[0]="${temp}"
		elif [[ ${column1} -eq 1 && ${row1} -eq 5 && ${playableRow1[8]} != "i" ]]; then
           		temp="${playableRow5[8]}"
            		playableRow5[8]="${playableRow1[8]}"
            		playableRow1[8]="${temp}"

		fi

	fi
}

function _swapInnerItem
{
	echo " "
	echo "You are using the item: \"SwapInnerCorners\""
	echo "Which column and row would you want to swap?"
	echo " "
	echo "Column(2 or 4): "
	read columnSwapIn
	echo " "
	echo "Row(2 or 4): "
	read rowSwapIn

	echo " "
	echo "Which column would you swap to?"
	echo " "
	echo "Swapped column(2 or 4): "
	read column2In
	echo " "
	echo "Swapped row(2 or 4): "
	read row2In

	if [[ ${columnSwapIn} -eq 2 && ${rowSwapIn} -eq 2 && ${playableRow2[2]} != "i" ]]; then
		if [[ ${column2In} -eq 2 && ${row2In} -eq 4 && ${playableRow2[6]} != "i" ]]; then
           		temp="${playableRow2[6]}"
            		playableRow2[6]="${playableRow2[2]}"
            		playableRow2[2]="${temp}"
		elif [[ ${column2In} -eq 4 && ${row2In} -eq 4 && ${playableRow4[6]} != "i" ]]; then
           		temp="${playableRow2[2]}"
            		playableRow2[2]="${playableRow4[6]}"
            		playableRow4[6]="${temp}"
		elif [[ ${column2In} -eq 4 && ${row2In} -eq 2 && ${playableRow4[2]} != "i" ]]; then
           		temp="${playableRow2[2]}"
            		playableRow2[2]="${playableRow4[2]}"
            		playableRow4[2]="${temp}"

		fi

	elif [[ ${columnSwapIn} -eq 2 && ${rowSwapIn} -eq 4 && ${playableRow2[6]} != "i" ]]; then
		if [[ ${column2In} -eq 2 && ${row2In} -eq 2 && ${playableRow2[2]} != "i" ]]; then
           		temp="${playableRow2[6]}"
            		playableRow2[6]="${playableRow2[2]}"
            		playableRow2[2]="${temp}"
		elif [[ ${column2In} -eq 4 && ${row2In} -eq 4 && ${playableRow4[6]} != "i" ]]; then
           		temp="${playableRow2[6]}"
            		playableRow2[6]="${playableRow4[6]}"
            		playableRow4[6]="${temp}"
		elif [[ ${column2In} -eq 4 && ${row2In} -eq 2 && ${playableRow4[2]} != "i" ]]; then
           		temp="${playableRow2[6]}"
            		playableRow2[6]="${playableRow4[2]}"
            		playableRow4[2]="${temp}"

		fi

	elif [[ ${columnSwapIn} -eq 4 && ${rowSwapIn} -eq 2 && ${playableRow4[2]} != "i" ]]; then
		if [[ ${column2In} -eq 2 && ${row2In} -eq 2 && ${playableRow2[2]} != "i" ]]; then
           		temp="${playableRow4[2]}"
            		playableRow4[2]="${playableRow2[2]}"
            		playableRow2[2]="${temp}"
		elif [[ ${column2In} -eq 4 && ${row2In} -eq 4 && ${playableRow4[6]} != "i" ]]; then
           		temp="${playableRow4[2]}"
            		playableRow4[2]="${playableRow4[6]}"
            		playableRow4[6]="${temp}"
		elif [[ ${column2In} -eq 2 && ${row2In} -eq 4 && ${playableRow2[6]} != "i" ]]; then
           		temp="${playableRow4[2]}"
            		playableRow4[2]="${playableRow2[6]}"
            		playableRow2[6]="${temp}"

		fi

	elif [[ ${columnSwapIn} -eq 4 && ${rowSwapIn} -eq 4 && ${playableRow4[6]} != "i" ]]; then
		if [[ ${column2In} -eq 2 && ${row2In} -eq 2 && ${playableRow2[2]} != "i" ]]; then
           		temp="${playableRow4[6]}"
            		playableRow4[6]="${playableRow2[2]}"
            		playableRow2[2]="${temp}"
		elif [[ ${column2In} -eq 4 && ${row2In} -eq 2 && ${playableRow4[2]} != "i" ]]; then
           		temp="${playableRow4[6]}"
            		playableRow4[6]="${playableRow4[2]}"
            		playableRow4[2]="${temp}"
		elif [[ ${column2In} -eq 2 && ${row2In} -eq 4 && ${playableRow2[6]} != "i" ]]; then
           		temp="${playableRow4[6]}"
            		playableRow4[6]="${playableRow2[6]}"
            		playableRow2[6]="${temp}"

		fi

	fi

}


function _destroy
{

	echo " "
        echo "You are using the item: \"Destroy\""
	echo "Would you like to destroy a row or column?(r or c)"
	read destroyCR
        echo " "

	if [[ ${destroyCR} == [Cc]"olumn" || ${destroyCR} == [Cc] ]]; then
		echo " "
		echo "Which Column would you like to destroy?(1-5): "
	       	read destroyColumn

		if [[ ${destroyColumn} -eq 1 ]]; then
			playableRow1[0]="i"
			playableRow1[2]="i"
			playableRow1[4]="i"
			playableRow1[6]="i"
			playableRow1[8]="i"
		elif [[ ${destroyColumn} -eq 2 ]]; then
			playableRow2[0]="i"
			playableRow2[2]="i"
			playableRow2[4]="i"
			playableRow2[6]="i"
			playableRow2[8]="i"
		elif [[ ${destroyColumn} -eq 3 ]]; then
			playableRow3[0]="i"
			playableRow3[2]="i"
			playableRow3[4]="i"
			playableRow3[6]="i"
			playableRow3[8]="i"
		elif [[ ${destroyColumn} -eq 4 ]]; then
			playableRow4[0]="i"
			playableRow4[2]="i"
			playableRow4[4]="i"
			playableRow4[6]="i"
			playableRow4[8]="i"
		elif [[ ${destroyColumn} -eq 5 ]]; then
			playableRow5[0]="i"
			playableRow5[2]="i"
			playableRow5[4]="i"
			playableRow5[6]="i"
			playableRow5[8]="i"

		fi

	elif [[ ${destroyCR} == [Rr]"ow" || ${destroyCR} == [Rr] ]]; then
	       	echo " "
		echo "Which Row would you like to destroy?(1-5):"
		read destroyRow

		if [[ ${destroyRow} -eq 1 ]]; then
			playableRow1[0]="i"
			playableRow2[0]="i"
			playableRow3[0]="i"
			playableRow4[0]="i"
			playableRow5[0]="i"
		elif [[ ${destroyRow} -eq 2 ]]; then
			playableRow1[2]="i"
			playableRow2[2]="i"
			playableRow3[2]="i"
			playableRow4[2]="i"
			playableRow5[2]="i"
		elif [[ ${destroyRow} -eq 3 ]]; then
			playableRow1[4]="i"
			playableRow2[4]="i"
			playableRow3[4]="i"
			playableRow4[4]="i"
			playableRow5[4]="i"
		elif [[ ${destroyRow} -eq 4 ]]; then
			playableRow1[6]="i"
			playableRow2[6]="i"
			playableRow3[6]="i"
			playableRow4[6]="i"
			playableRow5[6]="i"
		elif [[ ${destroyRow} -eq 5 ]]; then
			playableRow1[8]="i"
			playableRow2[8]="i"
			playableRow3[8]="i"
			playableRow4[8]="i"
			playableRow5[8]="i"

		fi

	fi
}

function _makeInventory
{
	items=("-" "-" "-")

	while [[ ${beginInventory} -le 3 ]]; do
		
		SOCCount=0
		SICCount=0
		DCount=0

		((beginInventoryCounter += RANDOM%2+1))
		((SOCCount+=beginInventoryCounter))

		((beginInventoryCounter += RANDOM%2+1))
		((SICCount+=beginInventoryCounter))
		
		if [[ ${beginInventory} -lt 3 ]]; then
			((beginInventoryCounter+=1))
			((DCount+=beginInventoryCounter))
		fi

		beginInventory=4
	done

	if [[ ${SOCCount} -eq 2 && ${SICCount} -ge 3 ]]; then
		items[0]="SwapOuterCorners(SOC)"
		items[1]="SwapOuterCorners(SOC)"
		items[2]="SwapInnerCorners(SIC)"

	elif [[ ${SOCCount} -eq 1 && ${SICCount} -eq 3 ]]; then
		items[0]="SwapOuterCorners(SOC)"
		items[1]="SwapInnerCorners(SIC)"
		items[2]="SwapInnerCorners(SIC)"

	else
		items[0]="SwapOuterCorners(SOC)"
		items[1]="SwapInnerCorners(SIC)"
		items[2]="Destroy(D)"
	fi

}

function _inventory
{

	echo "You have ${inventory} many items. They are: ${items[@]}"
	echo " "
	echo "What item do you want to use?"
	read itemUse
	echo " "
	if [[ ${itemUse} == [Ss]"wap"[Oo]"uter"[Cc]"orners" && ${items[0]} == "SwapOuterCorners(SOC)"  || ${itemUse} == [Ss][Oo][Cc] && ${items[0]} == "SwapOuterCorners(SOC)" ]]; then
		items[0]="-"
		((inventory--))
		_swapTopItem

	elif [[ ${itemUse} == [Ss]"wap"[Oo]"uter"[Cc]"orners" && ${items[1]} == "SwapOuterCorners(SOC)"  || ${itemUse} == [Ss][Oo][Cc] && ${items[1]} == "SwapOuterCorners(SOC)" ]]; then
		items[1]="-"
		((inventory--))
		_swapTopItem


	elif [[ ${itemUse} == [Dd] && ${items[2]} == "Destroy(D)" ]]; then
		items[2]="-"
		((inventory--))
		_destroy

	elif [[ ${itemUse} == [Ss]"wap"[Ii]"nner"[Cc]"orners" && ${items[1]} == "SwapInnerCorner(SOC)" || ${itemUse} == [Ss][Ii][Cc] && ${items[1]} == "SwapInnerCorners(SIC)" ]]; then
		items[1]="-"
		((inventory--))
		_swapInnerItem

	elif [[ ${itemUse} == [Ss]"wap"[Ii]"nner"[Cc]"orners" && ${items[2]} == "SwapInnerCorner(SOC)" || ${itemUse} == [Ss][Ii][Cc] && ${items[2]} == "SwapInnerCorners(SIC)" ]]; then
		items[2]="-"
		((inventory--))
		_swapInnerItem

	elif [[ ${itemUse} == [Bb] || ${itemUse} == [Bb]"ack" ]]; then
		_play

	elif [[ ${itemUse} == [Qq] || ${itemUse} == [Qq]"uit" ]]; then
		_quit

	elif [[ ${itemUse} == "-h" || ${itemUse} == [Hh]"elp" ]]; then
	       	_help

	else
		echo "You Don't have that item! Try Again! if you have no more items type b or back!"
		echo " "
		_inventory

	fi

}

function _play
{
	stuck=0
	while [[ ${stuck} -eq 0 ]]; do
		echo " "
		echo "Do you want to move or use an item?(m/i)"
		read choice
		echo " "

		if [[ ${choice} == [Mm]"ove" || ${choice} == [Mm] ]]; then
			clear
			_printBoard
			column=0
			row=0
			echo " "
			echo "Which column would you like to put the 0 on? (1-5)"
			read column
			echo " "

			echo "Which row would you like to put the 0 on? (1-5)"
			read row
			echo " "
			
			_playerMove

			stuck=1

		elif [[ ${choice} == [Ii]"tem" || ${choice} == [Ii] ]]; then
			_inventory


			stuck=1
		elif [[ ${choice} == [Qq]"uit" || ${choice} == [Qq] || ${choice} == [Ee]"xit" || ${choice} == [Ee] ]]; then
			_quit

		elif [[ ${choice} == "-h" || ${choice} == [Hh]"elp" ]]; then
			_help
			stuck=1
		else 
			echo "I do not understand. Try again!"
			_play

		fi
	
	done

}

function _help
{
	echo " "
	echo "Move,move,M,m: allows you to pick a row and column to place your piece in "
	echo "For example: if you do coulmn 1 row 3 it will place your piece here:"
	echo " "
	echo    "	
       		i | i | 0 | i | i
	     	------------------
	     	i | i | i | i | i
		------------------
		i | i | i | i | i
		------------------
		i | i | i | i | i
		------------------
		i | i | i | i | i
		"

	echo " "
	echo "Item,item,I,i: allows you to pick one of your items which are SwapOuterCorners, SwapInnerCorners, Destroy"
	echo " "
	echo "SwapOuterCorners,swapoutercourners,SOC,soc: swaps one of the outer corners for another corner."
	echo "For example you have an 0 in colum 1 row 5 and an X in column 5 row 1 and you want to swap them:" 
	echo " "
	echo    "       
                i | i | i | i | 0
                ------------------
                i | i | i | i | i
                ------------------
                i | i | i | i | i
                ------------------
                i | i | i | i | i
                ------------------
                X | i | i | i | i
                "
	echo " "
	echo "You want to swap the two"
	echo " "
	echo    "       
                i | i | i | i | X
                ------------------
                i | i | i | i | i
                ------------------
                i | i | i | i | i
                ------------------
                i | i | i | i | i
                ------------------
                O | i | i | i | i
                "

	echo " " 
	echo "SwapInnerCorners,swapinnercorners,SIC,sic: swaps one of the inner corners with another inner corner."
	echo " "
        echo    "       
                i | i | i | i | i
                ------------------
                i | i | i | O | i
                ------------------
                i | i | i | i | i
                ------------------
                i | X | i | i | i
                ------------------
                i | i | i | i | i
                "
        echo " "
        echo "You want to swap the two"
        echo " "
        echo    "       
                i | i | i | i | i
                ------------------
                i | i | i | X | i
                ------------------
                i | i | i | i | i
                ------------------
                i | O | i | i | i
                ------------------
                i | i | i | i | i
		"

	echo " "
	echo "Destroy,destroy,D,d: Destroys an entire row or column."
	echo "For example if you want to destroy row 3"
	echo " "
        echo    "       
                i | i | X | i | i
                ------------------
                i | i | i | i | i
                ------------------
                O | O | O | X | X
                ------------------
                i | i | i | i | i
                ------------------
                i | i | i | O | i
                "
        echo " "
        echo "You want to destroy column three"
        echo " "
        echo    "       
                i | i | X | i | i
                ------------------
                i | i | i | i | i
                ------------------
                i | i | i | i | i
                ------------------
                i | i | i | i | i
                ------------------
                i | i | i | O | i
		"
	echo " "
	echo "Back,back,B,b: Lets you choose a different move."
	echo " "
	echo "Quit,quit,Q,q: Exit the game. "
	echo " "
	echo "The bot can destroy large amounts of pieces and swap pieces around."
	echo " "	

	echo "To leave press E"
	read escape
	if [[ $escape == [Ee] ]]; then
		echo " "
		_printBoard
		_play

	else
		_help

	fi

}

function _checkDraw
{
	drawCounter=0
for ((j=0;j<9;j+=2));
do
                if [[ ${playableRow1[j]} != "i" ]]; then
                        ((drawCounter++))
                fi
                if [[ ${playableRow2[j]} != "i" ]]; then
                        ((drawCounter++))
                fi
                if [[ ${playableRow3[j]} != "i" ]]; then
                        ((drawCounter++))
                fi
                if [[ ${playableRow4[j]} != "i" ]]; then
                        ((drawCounter++))
                fi
                if [[ ${playableRow5[j]} != "i" ]]; then
                        ((drawCounter++))
                fi

done

if [[ $drawCounter -eq 25 && ${items[0]} == "-" && ${items[1]} == "-" && ${items[2]} == "-" ]]; then

	echo "You have drawn! Thanks for playing!!"
	exit

fi

}


function _whoIsFirst
{
	firstPlayer=" "

	echo "If you ever need help press \"-h\" for any help"
        echo " "
        echo "Would you like to go first?"
        read firstPlayer
        echo " "


	if [[ ${firstPlayer} == [Yy]"es" || ${firstPlayer} == [Yy] ]]; then
                _printBoard
                while [[ $i -eq 1 ]]; do
                        echo " "
                        _play
                        _printBoard
                        _winPlayerCondition
			_checkDraw

                        echo " "
                        echo " "
                        echo " "

                        _bot
                        _printBoard
                        _winBotCondition
                done

        elif [[ ${firstPlayer} == [Nn]"o" || ${firstPlayer} == [Nn] ]]; then
                while [[ $i -eq 1 ]]; do
                        echo " "
                        echo " "
                        _bot
                        _printBoard
                        _winBotCondition
			_checkDraw

                        echo " "
                        echo " "
                        echo " "

                        _play
                        _printBoard
                        _winPlayerCondition
                done

	elif [[ ${firstPlayer} == [Qq]"uit" || ${firstPlayer} == [Qq] ]]; then
		_quit

	
	elif [[ ${firstPlayer} == "-h" || ${firstPlayer} == [Hh]"elp" ]]; then
		_help

	else
		echo "I do not understand. Try again!"
		echo " "
		_whoIsFirst

        fi
}

clear
echo "Welcome to TicTacToe Deluxe"
echo " "
echo "Enter Start to play"
read begin
echo " "

if [[ ${begin} == [Ss]"tart" || ${begin} == "START" ]]; then
	_makeInventory

	_whoIsFirst

else
	_quit
fi 

















