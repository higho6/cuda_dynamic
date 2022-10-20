cmake_minimum_required(VERSION 3.0.2)
project(package_1)

add_compile_options(-std=c++14)
set(CMAKE_BUILD_TYPE Release)
set(CMAKE_CXX_FLAGS "-fPIC")

set(PACKAGE_1_LIB_ROOT ${PROJECT_SOURCE_DIR}/lib)

set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PACKAGE_1_LIB_ROOT})
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PACKAGE_1_LIB_ROOT})

find_package(CUDA REQUIRED)
if(CUDA_FOUND)
    set(CUDA_SEPARABLE_COMPILATION ON)
    set(CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS};-gencode arch=compute_86,code=sm_86;-std=c++14)
else()
    message(WARNING "FAILD FIND CUDA")
endif()

cuda_add_library(Package_Kernel_1 STATIC
                ${PROJECT_SOURCE_DIR}/src/package_1_kernel.cu)

target_include_directories(Package_Kernel_1
                            PUBLIC
                            ${PROJECT_SOURCE_DIR}/include
                            /usr/local/cuda-11.4/include)
target_link_libraries(Package_Kernel_1
                            ${CUDA_LIBRARIES})
                            
add_library(${PROJECT_NAME} SHARED
                ${PROJECT_SOURCE_DIR}/src/package_1.cpp)

target_include_directories(${PROJECT_NAME}
                            PUBLIC
                            ${PROJECT_SOURCE_DIR}/include)

target_link_libraries(${PROJECT_NAME}
                        Package_Kernel_1
                        ${CUDA_LIBRARIES})     

