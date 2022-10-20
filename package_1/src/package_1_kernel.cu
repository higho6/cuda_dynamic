#include<stdio.h>
#include"package_1_kernel.h"


__global__ void Child_1()
{
    printf("hello1\n");
}

__global__ void Parent_1()
{
    Child_1<<<1,1>>>();
    //cudaDeviceSynchronize();
}

void Kernel_Function()
{
    Parent_1<<<1,1>>>();
    cudaDeviceSynchronize();
}