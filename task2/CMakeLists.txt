cmake_minimum_required( VERSION 3.5 )

project( myName VERSION 0.0.1 )

execute_process(COMMAND python3 preparing.py WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/A)



add_executable( C ${CMAKE_CURRENT_SOURCE_DIR}/C/main.cpp ${CMAKE_CURRENT_SOURCE_DIR}/C/main.h)
set( EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/bin )
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/lib)


include_directories (${CMAKE_CURRENT_SOURCE_DIR})
add_subdirectory( B )
target_link_libraries( C myLibrary)

