#include <stddio.h>

int r()
{
	static int nr =10;

	return nr--;
}

int main()
{

	for(r();r();r())
		printf("%d\n",r());
return 0;
}
