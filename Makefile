# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.12.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.12.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/wgoodall2019/Dev/dsa/src/BST

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/wgoodall2019/Dev/dsa/src/BST

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/Cellar/cmake/3.12.1/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/Cellar/cmake/3.12.1/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/wgoodall2019/Dev/dsa/src/BST/CMakeFiles /Users/wgoodall2019/Dev/dsa/src/BST/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/wgoodall2019/Dev/dsa/src/BST/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named test_BST

# Build rule for target.
test_BST: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test_BST
.PHONY : test_BST

# fast build rule for target.
test_BST/fast:
	$(MAKE) -f CMakeFiles/test_BST.dir/build.make CMakeFiles/test_BST.dir/build
.PHONY : test_BST/fast

#=============================================================================
# Target rules for targets named BST

# Build rule for target.
BST: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 BST
.PHONY : BST

# fast build rule for target.
BST/fast:
	$(MAKE) -f CMakeFiles/BST.dir/build.make CMakeFiles/BST.dir/build
.PHONY : BST/fast

bst.o: bst.cpp.o

.PHONY : bst.o

# target to build an object file
bst.cpp.o:
	$(MAKE) -f CMakeFiles/test_BST.dir/build.make CMakeFiles/test_BST.dir/bst.cpp.o
	$(MAKE) -f CMakeFiles/BST.dir/build.make CMakeFiles/BST.dir/bst.cpp.o
.PHONY : bst.cpp.o

bst.i: bst.cpp.i

.PHONY : bst.i

# target to preprocess a source file
bst.cpp.i:
	$(MAKE) -f CMakeFiles/test_BST.dir/build.make CMakeFiles/test_BST.dir/bst.cpp.i
	$(MAKE) -f CMakeFiles/BST.dir/build.make CMakeFiles/BST.dir/bst.cpp.i
.PHONY : bst.cpp.i

bst.s: bst.cpp.s

.PHONY : bst.s

# target to generate assembly for a file
bst.cpp.s:
	$(MAKE) -f CMakeFiles/test_BST.dir/build.make CMakeFiles/test_BST.dir/bst.cpp.s
	$(MAKE) -f CMakeFiles/BST.dir/build.make CMakeFiles/BST.dir/bst.cpp.s
.PHONY : bst.cpp.s

main.o: main.cpp.o

.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) -f CMakeFiles/BST.dir/build.make CMakeFiles/BST.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i

.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) -f CMakeFiles/BST.dir/build.make CMakeFiles/BST.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s

.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) -f CMakeFiles/BST.dir/build.make CMakeFiles/BST.dir/main.cpp.s
.PHONY : main.cpp.s

test.o: test.cpp.o

.PHONY : test.o

# target to build an object file
test.cpp.o:
	$(MAKE) -f CMakeFiles/test_BST.dir/build.make CMakeFiles/test_BST.dir/test.cpp.o
.PHONY : test.cpp.o

test.i: test.cpp.i

.PHONY : test.i

# target to preprocess a source file
test.cpp.i:
	$(MAKE) -f CMakeFiles/test_BST.dir/build.make CMakeFiles/test_BST.dir/test.cpp.i
.PHONY : test.cpp.i

test.s: test.cpp.s

.PHONY : test.s

# target to generate assembly for a file
test.cpp.s:
	$(MAKE) -f CMakeFiles/test_BST.dir/build.make CMakeFiles/test_BST.dir/test.cpp.s
.PHONY : test.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... test_BST"
	@echo "... BST"
	@echo "... bst.o"
	@echo "... bst.i"
	@echo "... bst.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... test.o"
	@echo "... test.i"
	@echo "... test.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
