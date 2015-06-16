#include <iostream>
#include <cstdlib>
#include <ctime>
#include "genMino.h"
#include<new>
using namespace std;
void my_handler()
{
    cerr<<"error new Mino pointer"<<endl;
    exit(1);
}
int main()
{
    Mino * mino_ptr;
    set_new_handler(my_handler);
    srandom(time(NULL));
    for(int i=0;i<3;++i)
    {
	mino_ptr = genMino();
	mino_ptr->paint();
	delete mino_ptr;
    }
    return 0;
}
