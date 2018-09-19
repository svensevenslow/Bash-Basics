echo "Before"
cat "$3"

# -i writes changes to file
# -pe allows inplace editing

perl -i -pe "s/$1/$2/" "$3"

echo "After"
cat "$3"
