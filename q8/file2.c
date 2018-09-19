#include<stdio.h>

void foo();//forward declaration

int main()
{
	printf("Giving a call to foo function defined in file1.c\n");
	foo();
	printf("All done\n");
return 0;
}
