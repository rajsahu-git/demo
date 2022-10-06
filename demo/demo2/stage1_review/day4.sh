for file in *
do 
	filename=`echo $file | awk -F. '{print $1}'`
	ex=`echo $file | awk -F. '{print $2}'`s
	a='day4'
	if [ $filename != $a ]
	then
		mkdir -p $filename/$ex
		mv $file $filename/$ex
		echo $file "is move in" $filename/$ex
	fi
done



