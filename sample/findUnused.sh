fileList=$(find . -type f| grep -E ".+(txt|json|xml|cpp|py|c|html)")
imageFilelist=$(find . -type f| grep -E ".+(jpg|png|gif|jpeg)")

for imageFile in $imageFilelist;
do
    imageFound=1;
    for textFile in $fileList;
    do
        grep -q $(basename $imageFile) $textFile;
        if [ $? -eq 0 ] 
        then
            imageFound=0;
        fi
    done

    if [ $imageFound -eq 1 ]
    then
        echo $imageFile
    fi
done
