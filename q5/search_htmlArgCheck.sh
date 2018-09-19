# -z flag means string with zero length
#Check for the number of arguments
if [ ! -z "$4" ] || [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ] ; then
  if test "$1" != "-help" ; then
    echo "The script can only take 3 arguments"
    echo "Please run the scipt with -help to see correct usage"
  fi
elif [ ! -z "$1" ] && [ ! -z "$2" ] && [ ! -z "$3" ]; then
  cat "$2" > "$3"
  foo="<mark>$1</mark>"

  sedcmd="s@$1@$foo@g"
  eval sed -i -e  '$sedcmd' "$3"

  firefox "$3"&
  google-chrome "$2"&
fi

if [ "$1" == "-help" ] && [ -z "$2" ] && [ -z "$3" ]; then
	echo "The script can only take three arguments"
	echo "The first argument holds the string to be highlighted"
	echo "The second argument holds the input html file"
	echo "The third argument holds the output html file to which the changes would be written"
fi


