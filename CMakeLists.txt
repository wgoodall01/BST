cmake_minimum_required (VERSION 2.6)
set(CMAKE_CXX_STANDARD 11)

project (BST)

include_directories(include)

set(srcs
	bst.cpp
	)

if(EXISTS ${CMAKE_SOURCE_DIR}/main.cpp)
	add_executable(BST ${srcs} main.cpp)
	target_compile_definitions(
		BST
		PRIVATE
		DOCTEST_CONFIG_DISABLE
		)
endif()

if(EXISTS ${CMAKE_SOURCE_DIR}/test.cpp)
	add_executable(test_BST ${srcs} test.cpp)
endif()
