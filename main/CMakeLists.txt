cmake_minimum_required(VERSION 3.0.2)
project(test_rdc)

add_compile_options(-std=c++14)
set(CMAKE_BUILD_TYPE Release)
set(CMAKE_CXX_FLAGS "-fPIC")

find_package(CUDA REQUIRED)
if(CUDA_FOUND)
    set(CUDA_SEPARABLE_COMPILATION ON)
    set(CUDA_NVCC_FLAGS ${CUDA_NVCC_FLAGS};-gencode arch=compute_86,code=sm_86;-std=c++14)
else()
    message(WARNING "FAILD FIND CUDA")
endif()

add_executable(${PROJECT_NAME} 
            main.cpp)
target_include_directories(${PROJECT_NAME}
                            PUBLIC
                            /home/lqy/work/test_rdc/package_1/include/
                            /home/lqy/work/test_rdc/package_2/include/
                            /usr/local/cuda-11.4/include/
                            )
target_link_libraries(${PROJECT_NAME}
                            /home/lqy/work/test_rdc/package_1/lib/libpackage_1.so
                            /home/lqy/work/test_rdc/package_2/lib/libpackage_2.so
                            ${CUDA_LIBRARIES}
                            )
