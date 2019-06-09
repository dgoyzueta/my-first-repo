clear
echo "Guess the number of files (including folders) in the directory:"
pwd
read number

flag=0
realnumber=$(ls -l | wc -l)

while [[ $flag -eq 0 ]]; do
    if [[ $number -lt $realnumber ]]; then
        echo "Too Low."
    else
        if [[ $number -gt $realnumber ]]; then
            echo "Too high."
        else
            echo "Congratulations! You got the number right."
            flag=1
        fi
    fi
    if [[ $flag -eq 0 ]]; then
        echo "Reenter number:"
        read number
    fi
done

