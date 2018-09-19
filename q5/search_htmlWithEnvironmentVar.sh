#copying input file content into output file
# $2 input.html $3 output.html $1 string to highlight

cat "$2" > "$3"
foo="<mark>$1</mark>"

sedcmd="s@$1@$foo@g" 
eval sed -i -e  '$sedcmd' "$3"

export HIGHLIGHT_COLOR="set"
if [ "$HIGHLIGHT_COLOR" == set ]; then
  old="background-color: yellow;"
  new="background-color: pink;"
  sed -i -e "s/$old/$new/g" "$3"
fi

export BROWSER="unset"
env > file #to show environment variables created
if [ "$BROWSER" == set ]; then
  firefox "$3"&
else
 google-chrome "$3"&	
fi

