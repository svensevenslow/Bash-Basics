#Scaling and renaming all images in the directory

for file in *.jpg
do
	convert "$file" -scale 10% "${file/.jpg/-abcd-small.jpg}"
done

#rm *small.jpg to remove converted images from the directory
