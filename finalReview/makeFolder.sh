#make folder for txt file
for file in `ls *.txt`;
do
	foldername=`echo $file | awk -F. '{print $1}'`;
	if [ -d $foldername ];
	then 
		echo "Folder $foldername Exists"
	else
		mkdir $foldername
		echo "Folder $foldername Created"
	fi
done

