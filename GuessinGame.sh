LL=0                    # Lower limit of the game range
UL=100                  # Upper limit of the game range
DIFF=$(($UL-$LL+1))
RANDOM=$$
#r=$(( $RANDOM % 10 ))   #random number between 0 and 9
#R=$(($(($RANDOM%$DIFF))+$1))

echo "------------------GUESSING GAME----------------"
echo
echo
read -p "Guess the no of files in this folder?  "

function no_files {
        mkdir GuessinGame
        cd GuessinGame
        touch file{01..$(($(($RANDOM%$DIFF))+$1))}        
        ls | wc -l
}

correct=$(no_files)
ls

while [[ $REPLY -ne $correct ]]
do
        if [[ $REPLY -gt $correct ]]
        then
                echo "Nope..."
        else
                echo "Nah..."
        fi
        echo
        read -p "Try again: "
done

echo "Yes!! You win.. :)"
rm -r GuessinGame
