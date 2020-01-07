directoryPath=~/

## first step
if [ -d "$directoryPath" ] && [ -r "$directoryPath" ]
then
    echo "yes it's a directory and i can read it"
else
    echo "No, it's not a directory or i can't read it"
fi

##second step
if [ -d "$directoryPath" ] && [ -r "$directoryPath" ]
then
    for file in ${directoryPath}*
    do 
        if [ -f "$file" ]
        then 
            echo "File Name $(basename ${file})"
        fi
    done
else
    echo "No, it's not a directory or i can't read it"
fi