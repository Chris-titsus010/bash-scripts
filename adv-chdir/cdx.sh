#! bin/bash

path=""
if [ -n "$1" ]
then
	case $1 in
		"-h")
			path="~/" ;;
		"-c")
			IFS=' ' read -ra keywords <<< "$2"
			for i in "${keywords[@]}"
			do
				path+="/**/*$i*"
			done ;;
	esac
fi
echo $path

cd $(find $($path | sed 's/"//g') -type d | head -n 1)
#cd $(find / -type d -name "$path" 2>&1 | grep -v "Permission denied" | head -n 1)

