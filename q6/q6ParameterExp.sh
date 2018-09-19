#loop through file to find and replace using bash parameter expansion
#input of the form 
#./executable StringFind StringReplace Filename

echo "Before"
cat "$3"

echo "Changes not written yet to original file"
while IFS= read -r line
do
  case "$line" in
    *$1*) printf "%s\n" "${line/$1/$2}" >> newFile ;; 
    *) printf "%s\n" "$line" >> newFile ;; 
  esac
done < "$3" 

echo "After writing changes to file"
mv newFile "$3"
cat "$3"
