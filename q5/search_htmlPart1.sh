#copying input file content into output file
# $2 input.html $3 output.html $1 string to highlight

cat "$2" > "$3"
foo="<mark>$1</mark>"

sedcmd="s@$1@$foo@g" 
eval sed -i -e  '$sedcmd' "$3"

firefox "$3"&
google-chrome "$2"&
#firefox "$2"&


