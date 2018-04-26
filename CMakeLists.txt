cmake_minimum_required(VERSION 3.10)
project(libcleos)

set(CMAKE_CXX_STANDARD 14)

file(GLOB CPP_FILES  ./*.cpp ./*.c )
file(GLOB HPP_FILES  ./*.hpp ./*.h )


include_directories(asio_1_10_6)

add_library(libcleos ${CPP_FILES} ${HPP_FILES})