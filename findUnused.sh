fileList=$(find . | grep -E ".+(txt|json|xml|cpp|py|c|html)")
imageFilelist=$(find . | grep -E ".+(jpg|png|gif|jpeg)")


for file in $fileList 
do
    grep -E "(jpg|png|gif|jpeg)" $file;
    echo $file;
done

for i in $imageFilelist
do
  grep -E "(jpg|png|gif|jpeg)" $i;   
  echo $i;
done

if ("$fileList" != "$imageFilelist")
then 
    grep -E "(jpg|png|gif|jpeg)" myfile;
fi

