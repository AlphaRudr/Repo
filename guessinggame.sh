echo "------------------GUESSING GAME----------------"
echo
echo
read -p "Guess the no. of files in this folder?  "

function no_files {    
        ls | wc -l
}

correct=$(no_files)

while [[ $REPLY -ne $correct ]]
do
        if [[ $REPLY -gt $correct ]]
        then
                echo "Too High..."
        else
                echo "Too Low..."
        fi
        echo
        read -p "Try again: "
done

echo "Yes!! You got it right. :)"

