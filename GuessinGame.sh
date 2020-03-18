echo "------------------GUESSING GAME----------------"
echo
echo
read -p "Guess the no of files in this folder?  "

function no_files {
        mkdir GuessinGame
        cd GuessinGame
        touch file{01..20}        # change here to differ game value
#       local number=$(ls | wc -l)
#       echo $number
        ls | wc -l
}

correct=$(no_files)
ls

while [[ $REPLY -ne $correct ]]
do
        if [[ $REPLY -gt $correct ]]
        then
                echo "Too high..."
        else
                echo "Too low..."
        fi
        echo
        read -p "Try again: "
done

echo "Yes!! You win.. :)"
rm -r GuessinGame
