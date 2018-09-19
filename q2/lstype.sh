#make file executable
#chmod 777 lstype.sh

#create soft link for file
# ln -s test linkForTestFile

#test command used to check file types
#test -d FILE: FILE exists and is a directory

if [ $1 == '-dir' ]
then
  echo 'Directory'
  for f in *
  do 
    test -d $f && echo $f;
  done
fi

#test -L FILE: FILE exists and is a symbolic link 
if [ $1 == '-links' ]
then
     echo 'Link'
     for f in *
     do
       test -L $f && echo $f
     done
fi

#test -x FILE: FILE exists and execute (or search) permission is granted
#test -f: FILE exists and is a regular file
if [ $1 == '-exe' ]
then
     echo 'Executable'
     for f in *
       do
         test -x $f && test -f $f && echo $f
       done
fi


