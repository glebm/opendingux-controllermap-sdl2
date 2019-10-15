cmake_minimum_required(VERSION 3.10)

project(controllermap LANGUAGES C)

list(APPEND CMAKE_MODULE_PATH "${controllermap_SOURCE_DIR}/CMake")

find_package(SDL2 REQUIRED)
find_package(SDL2_ttf REQUIRED)

add_executable(controllermap controllermap.c)
target_link_libraries(controllermap PRIVATE
      SDL2::SDL2main
      SDL2::SDL2_ttf)
target_compile_definitions(controllermap PRIVATE -DDEBUG_CONTROLLERMAP)
