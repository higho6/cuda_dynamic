#include<stdio.h>
#include<thrust/sort.h>
#include<thrust/execution_policy.h>
#include"package_2_kernel.h"


__global__ void Child_2()
{
    printf("hello2\n");
}

__global__ void Parent_2()
{

    cudaDeviceSynchronize();
    printf("2parentkernel\n");
    cudaDeviceSynchronize();
    Child_2<<<1,1>>>();

    cudaDeviceSynchronize();

}

void Kernel_Function2()
{

    Parent_2<<<1,1>>>();
    cudaDeviceSynchronize();
    printf("----out---\n");
    
    int array[5] = {5,3,4,8,9};
    int key[5] = {5,8,3,4,5};
    int *dev_array;
    int *dev_key;
    cudaMalloc(&dev_array,5*sizeof(int));
    cudaMalloc(&dev_key,5*sizeof(int));
    cudaMemcpy(dev_array,array,5*sizeof(int),cudaMemcpyHostToDevice);
    cudaMemcpy(dev_key,key,5*sizeof(int),cudaMemcpyHostToDevice);
    thrust::sort_by_key(thrust::device,dev_array,dev_array+5,dev_key);

    cudaFree(dev_array);
    cudaFree(dev_key);


}