for file in *
do 
	filename=`echo $file | awk -F. '{print $1}'`
	ex=`echo $file | awk -F. '{print $2}'`
	echo $ex
	echo $filename
	mkdir -p $filename/$ex
	if [ $ex -ne '.sh' ]
	then
		mv $file $filename/$ex
	fi
done



