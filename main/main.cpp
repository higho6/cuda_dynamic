#include<iostream>
#include<cuda.h>
#include "package_1.h"
#include "package_2.h"

int main()
{



    Package_1 *p1 = new Package_1();
    p1->DynamicP();

    Package_2 *p2 = (Package_2*) new Package_2();

    p2->DynamicP2();
    






    return 0;
}