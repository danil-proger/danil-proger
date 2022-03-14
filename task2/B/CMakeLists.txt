cmake_minimum_required(VERSION 3.5)

project(myLibrary)

add_library(${PROJECT_NAME} SHARED lib.cpp lib.h)
