# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/danny/Dropbox/Fall2015/SoftwareDesign/P4/qtpong

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/danny/Dropbox/Fall2015/SoftwareDesign/P4/qtpong

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running tests..."
	/usr/bin/ctest --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test

.PHONY : test/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/danny/Dropbox/Fall2015/SoftwareDesign/P4/qtpong/CMakeFiles /home/danny/Dropbox/Fall2015/SoftwareDesign/P4/qtpong/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/danny/Dropbox/Fall2015/SoftwareDesign/P4/qtpong/CMakeFiles 0
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
# Target rules for targets named testqtpong

# Build rule for target.
testqtpong: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 testqtpong
.PHONY : testqtpong

# fast build rule for target.
testqtpong/fast:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/build
.PHONY : testqtpong/fast

#=============================================================================
# Target rules for targets named ContinuousSubmit

# Build rule for target.
ContinuousSubmit: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ContinuousSubmit
.PHONY : ContinuousSubmit

# fast build rule for target.
ContinuousSubmit/fast:
	$(MAKE) -f CMakeFiles/ContinuousSubmit.dir/build.make CMakeFiles/ContinuousSubmit.dir/build
.PHONY : ContinuousSubmit/fast

#=============================================================================
# Target rules for targets named ContinuousCoverage

# Build rule for target.
ContinuousCoverage: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ContinuousCoverage
.PHONY : ContinuousCoverage

# fast build rule for target.
ContinuousCoverage/fast:
	$(MAKE) -f CMakeFiles/ContinuousCoverage.dir/build.make CMakeFiles/ContinuousCoverage.dir/build
.PHONY : ContinuousCoverage/fast

#=============================================================================
# Target rules for targets named ContinuousTest

# Build rule for target.
ContinuousTest: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ContinuousTest
.PHONY : ContinuousTest

# fast build rule for target.
ContinuousTest/fast:
	$(MAKE) -f CMakeFiles/ContinuousTest.dir/build.make CMakeFiles/ContinuousTest.dir/build
.PHONY : ContinuousTest/fast

#=============================================================================
# Target rules for targets named ContinuousBuild

# Build rule for target.
ContinuousBuild: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ContinuousBuild
.PHONY : ContinuousBuild

# fast build rule for target.
ContinuousBuild/fast:
	$(MAKE) -f CMakeFiles/ContinuousBuild.dir/build.make CMakeFiles/ContinuousBuild.dir/build
.PHONY : ContinuousBuild/fast

#=============================================================================
# Target rules for targets named ContinuousMemCheck

# Build rule for target.
ContinuousMemCheck: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ContinuousMemCheck
.PHONY : ContinuousMemCheck

# fast build rule for target.
ContinuousMemCheck/fast:
	$(MAKE) -f CMakeFiles/ContinuousMemCheck.dir/build.make CMakeFiles/ContinuousMemCheck.dir/build
.PHONY : ContinuousMemCheck/fast

#=============================================================================
# Target rules for targets named Nightly

# Build rule for target.
Nightly: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Nightly
.PHONY : Nightly

# fast build rule for target.
Nightly/fast:
	$(MAKE) -f CMakeFiles/Nightly.dir/build.make CMakeFiles/Nightly.dir/build
.PHONY : Nightly/fast

#=============================================================================
# Target rules for targets named NightlyTest

# Build rule for target.
NightlyTest: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 NightlyTest
.PHONY : NightlyTest

# fast build rule for target.
NightlyTest/fast:
	$(MAKE) -f CMakeFiles/NightlyTest.dir/build.make CMakeFiles/NightlyTest.dir/build
.PHONY : NightlyTest/fast

#=============================================================================
# Target rules for targets named NightlyUpdate

# Build rule for target.
NightlyUpdate: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 NightlyUpdate
.PHONY : NightlyUpdate

# fast build rule for target.
NightlyUpdate/fast:
	$(MAKE) -f CMakeFiles/NightlyUpdate.dir/build.make CMakeFiles/NightlyUpdate.dir/build
.PHONY : NightlyUpdate/fast

#=============================================================================
# Target rules for targets named Continuous

# Build rule for target.
Continuous: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Continuous
.PHONY : Continuous

# fast build rule for target.
Continuous/fast:
	$(MAKE) -f CMakeFiles/Continuous.dir/build.make CMakeFiles/Continuous.dir/build
.PHONY : Continuous/fast

#=============================================================================
# Target rules for targets named NightlyBuild

# Build rule for target.
NightlyBuild: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 NightlyBuild
.PHONY : NightlyBuild

# fast build rule for target.
NightlyBuild/fast:
	$(MAKE) -f CMakeFiles/NightlyBuild.dir/build.make CMakeFiles/NightlyBuild.dir/build
.PHONY : NightlyBuild/fast

#=============================================================================
# Target rules for targets named NightlyStart

# Build rule for target.
NightlyStart: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 NightlyStart
.PHONY : NightlyStart

# fast build rule for target.
NightlyStart/fast:
	$(MAKE) -f CMakeFiles/NightlyStart.dir/build.make CMakeFiles/NightlyStart.dir/build
.PHONY : NightlyStart/fast

#=============================================================================
# Target rules for targets named NightlyMemoryCheck

# Build rule for target.
NightlyMemoryCheck: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 NightlyMemoryCheck
.PHONY : NightlyMemoryCheck

# fast build rule for target.
NightlyMemoryCheck/fast:
	$(MAKE) -f CMakeFiles/NightlyMemoryCheck.dir/build.make CMakeFiles/NightlyMemoryCheck.dir/build
.PHONY : NightlyMemoryCheck/fast

#=============================================================================
# Target rules for targets named NightlyMemCheck

# Build rule for target.
NightlyMemCheck: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 NightlyMemCheck
.PHONY : NightlyMemCheck

# fast build rule for target.
NightlyMemCheck/fast:
	$(MAKE) -f CMakeFiles/NightlyMemCheck.dir/build.make CMakeFiles/NightlyMemCheck.dir/build
.PHONY : NightlyMemCheck/fast

#=============================================================================
# Target rules for targets named ExperimentalStart

# Build rule for target.
ExperimentalStart: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ExperimentalStart
.PHONY : ExperimentalStart

# fast build rule for target.
ExperimentalStart/fast:
	$(MAKE) -f CMakeFiles/ExperimentalStart.dir/build.make CMakeFiles/ExperimentalStart.dir/build
.PHONY : ExperimentalStart/fast

#=============================================================================
# Target rules for targets named ContinuousConfigure

# Build rule for target.
ContinuousConfigure: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ContinuousConfigure
.PHONY : ContinuousConfigure

# fast build rule for target.
ContinuousConfigure/fast:
	$(MAKE) -f CMakeFiles/ContinuousConfigure.dir/build.make CMakeFiles/ContinuousConfigure.dir/build
.PHONY : ContinuousConfigure/fast

#=============================================================================
# Target rules for targets named NightlyCoverage

# Build rule for target.
NightlyCoverage: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 NightlyCoverage
.PHONY : NightlyCoverage

# fast build rule for target.
NightlyCoverage/fast:
	$(MAKE) -f CMakeFiles/NightlyCoverage.dir/build.make CMakeFiles/NightlyCoverage.dir/build
.PHONY : NightlyCoverage/fast

#=============================================================================
# Target rules for targets named ExperimentalUpdate

# Build rule for target.
ExperimentalUpdate: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ExperimentalUpdate
.PHONY : ExperimentalUpdate

# fast build rule for target.
ExperimentalUpdate/fast:
	$(MAKE) -f CMakeFiles/ExperimentalUpdate.dir/build.make CMakeFiles/ExperimentalUpdate.dir/build
.PHONY : ExperimentalUpdate/fast

#=============================================================================
# Target rules for targets named ExperimentalConfigure

# Build rule for target.
ExperimentalConfigure: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ExperimentalConfigure
.PHONY : ExperimentalConfigure

# fast build rule for target.
ExperimentalConfigure/fast:
	$(MAKE) -f CMakeFiles/ExperimentalConfigure.dir/build.make CMakeFiles/ExperimentalConfigure.dir/build
.PHONY : ExperimentalConfigure/fast

#=============================================================================
# Target rules for targets named ExperimentalCoverage

# Build rule for target.
ExperimentalCoverage: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ExperimentalCoverage
.PHONY : ExperimentalCoverage

# fast build rule for target.
ExperimentalCoverage/fast:
	$(MAKE) -f CMakeFiles/ExperimentalCoverage.dir/build.make CMakeFiles/ExperimentalCoverage.dir/build
.PHONY : ExperimentalCoverage/fast

#=============================================================================
# Target rules for targets named ExperimentalBuild

# Build rule for target.
ExperimentalBuild: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ExperimentalBuild
.PHONY : ExperimentalBuild

# fast build rule for target.
ExperimentalBuild/fast:
	$(MAKE) -f CMakeFiles/ExperimentalBuild.dir/build.make CMakeFiles/ExperimentalBuild.dir/build
.PHONY : ExperimentalBuild/fast

#=============================================================================
# Target rules for targets named NightlyConfigure

# Build rule for target.
NightlyConfigure: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 NightlyConfigure
.PHONY : NightlyConfigure

# fast build rule for target.
NightlyConfigure/fast:
	$(MAKE) -f CMakeFiles/NightlyConfigure.dir/build.make CMakeFiles/NightlyConfigure.dir/build
.PHONY : NightlyConfigure/fast

#=============================================================================
# Target rules for targets named ExperimentalTest

# Build rule for target.
ExperimentalTest: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ExperimentalTest
.PHONY : ExperimentalTest

# fast build rule for target.
ExperimentalTest/fast:
	$(MAKE) -f CMakeFiles/ExperimentalTest.dir/build.make CMakeFiles/ExperimentalTest.dir/build
.PHONY : ExperimentalTest/fast

#=============================================================================
# Target rules for targets named ExperimentalMemCheck

# Build rule for target.
ExperimentalMemCheck: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ExperimentalMemCheck
.PHONY : ExperimentalMemCheck

# fast build rule for target.
ExperimentalMemCheck/fast:
	$(MAKE) -f CMakeFiles/ExperimentalMemCheck.dir/build.make CMakeFiles/ExperimentalMemCheck.dir/build
.PHONY : ExperimentalMemCheck/fast

#=============================================================================
# Target rules for targets named qtpong

# Build rule for target.
qtpong: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 qtpong
.PHONY : qtpong

# fast build rule for target.
qtpong/fast:
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/build
.PHONY : qtpong/fast

#=============================================================================
# Target rules for targets named Experimental

# Build rule for target.
Experimental: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Experimental
.PHONY : Experimental

# fast build rule for target.
Experimental/fast:
	$(MAKE) -f CMakeFiles/Experimental.dir/build.make CMakeFiles/Experimental.dir/build
.PHONY : Experimental/fast

#=============================================================================
# Target rules for targets named NightlySubmit

# Build rule for target.
NightlySubmit: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 NightlySubmit
.PHONY : NightlySubmit

# fast build rule for target.
NightlySubmit/fast:
	$(MAKE) -f CMakeFiles/NightlySubmit.dir/build.make CMakeFiles/NightlySubmit.dir/build
.PHONY : NightlySubmit/fast

#=============================================================================
# Target rules for targets named ExperimentalSubmit

# Build rule for target.
ExperimentalSubmit: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ExperimentalSubmit
.PHONY : ExperimentalSubmit

# fast build rule for target.
ExperimentalSubmit/fast:
	$(MAKE) -f CMakeFiles/ExperimentalSubmit.dir/build.make CMakeFiles/ExperimentalSubmit.dir/build
.PHONY : ExperimentalSubmit/fast

#=============================================================================
# Target rules for targets named ContinuousStart

# Build rule for target.
ContinuousStart: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ContinuousStart
.PHONY : ContinuousStart

# fast build rule for target.
ContinuousStart/fast:
	$(MAKE) -f CMakeFiles/ContinuousStart.dir/build.make CMakeFiles/ContinuousStart.dir/build
.PHONY : ContinuousStart/fast

#=============================================================================
# Target rules for targets named ContinuousUpdate

# Build rule for target.
ContinuousUpdate: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ContinuousUpdate
.PHONY : ContinuousUpdate

# fast build rule for target.
ContinuousUpdate/fast:
	$(MAKE) -f CMakeFiles/ContinuousUpdate.dir/build.make CMakeFiles/ContinuousUpdate.dir/build
.PHONY : ContinuousUpdate/fast

#=============================================================================
# Target rules for targets named testqtpong_automoc

# Build rule for target.
testqtpong_automoc: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 testqtpong_automoc
.PHONY : testqtpong_automoc

# fast build rule for target.
testqtpong_automoc/fast:
	$(MAKE) -f CMakeFiles/testqtpong_automoc.dir/build.make CMakeFiles/testqtpong_automoc.dir/build
.PHONY : testqtpong_automoc/fast

#=============================================================================
# Target rules for targets named qtpong_automoc

# Build rule for target.
qtpong_automoc: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 qtpong_automoc
.PHONY : qtpong_automoc

# fast build rule for target.
qtpong_automoc/fast:
	$(MAKE) -f CMakeFiles/qtpong_automoc.dir/build.make CMakeFiles/qtpong_automoc.dir/build
.PHONY : qtpong_automoc/fast

ball.o: ball.cpp.o

.PHONY : ball.o

# target to build an object file
ball.cpp.o:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/ball.cpp.o
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/ball.cpp.o
.PHONY : ball.cpp.o

ball.i: ball.cpp.i

.PHONY : ball.i

# target to preprocess a source file
ball.cpp.i:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/ball.cpp.i
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/ball.cpp.i
.PHONY : ball.cpp.i

ball.s: ball.cpp.s

.PHONY : ball.s

# target to generate assembly for a file
ball.cpp.s:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/ball.cpp.s
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/ball.cpp.s
.PHONY : ball.cpp.s

engine.o: engine.cpp.o

.PHONY : engine.o

# target to build an object file
engine.cpp.o:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/engine.cpp.o
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/engine.cpp.o
.PHONY : engine.cpp.o

engine.i: engine.cpp.i

.PHONY : engine.i

# target to preprocess a source file
engine.cpp.i:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/engine.cpp.i
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/engine.cpp.i
.PHONY : engine.cpp.i

engine.s: engine.cpp.s

.PHONY : engine.s

# target to generate assembly for a file
engine.cpp.s:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/engine.cpp.s
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/engine.cpp.s
.PHONY : engine.cpp.s

main.o: main.cpp.o

.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i

.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s

.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/main.cpp.s
.PHONY : main.cpp.s

mainwindow.o: mainwindow.cpp.o

.PHONY : mainwindow.o

# target to build an object file
mainwindow.cpp.o:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/mainwindow.cpp.o
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/mainwindow.cpp.o
.PHONY : mainwindow.cpp.o

mainwindow.i: mainwindow.cpp.i

.PHONY : mainwindow.i

# target to preprocess a source file
mainwindow.cpp.i:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/mainwindow.cpp.i
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/mainwindow.cpp.i
.PHONY : mainwindow.cpp.i

mainwindow.s: mainwindow.cpp.s

.PHONY : mainwindow.s

# target to generate assembly for a file
mainwindow.cpp.s:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/mainwindow.cpp.s
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/mainwindow.cpp.s
.PHONY : mainwindow.cpp.s

paddle.o: paddle.cpp.o

.PHONY : paddle.o

# target to build an object file
paddle.cpp.o:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/paddle.cpp.o
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/paddle.cpp.o
.PHONY : paddle.cpp.o

paddle.i: paddle.cpp.i

.PHONY : paddle.i

# target to preprocess a source file
paddle.cpp.i:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/paddle.cpp.i
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/paddle.cpp.i
.PHONY : paddle.cpp.i

paddle.s: paddle.cpp.s

.PHONY : paddle.s

# target to generate assembly for a file
paddle.cpp.s:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/paddle.cpp.s
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/paddle.cpp.s
.PHONY : paddle.cpp.s

qtpong.o: qtpong.cpp.o

.PHONY : qtpong.o

# target to build an object file
qtpong.cpp.o:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/qtpong.cpp.o
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/qtpong.cpp.o
.PHONY : qtpong.cpp.o

qtpong.i: qtpong.cpp.i

.PHONY : qtpong.i

# target to preprocess a source file
qtpong.cpp.i:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/qtpong.cpp.i
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/qtpong.cpp.i
.PHONY : qtpong.cpp.i

qtpong.s: qtpong.cpp.s

.PHONY : qtpong.s

# target to generate assembly for a file
qtpong.cpp.s:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/qtpong.cpp.s
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/qtpong.cpp.s
.PHONY : qtpong.cpp.s

qtpong_automoc.o: qtpong_automoc.cpp.o

.PHONY : qtpong_automoc.o

# target to build an object file
qtpong_automoc.cpp.o:
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/qtpong_automoc.cpp.o
.PHONY : qtpong_automoc.cpp.o

qtpong_automoc.i: qtpong_automoc.cpp.i

.PHONY : qtpong_automoc.i

# target to preprocess a source file
qtpong_automoc.cpp.i:
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/qtpong_automoc.cpp.i
.PHONY : qtpong_automoc.cpp.i

qtpong_automoc.s: qtpong_automoc.cpp.s

.PHONY : qtpong_automoc.s

# target to generate assembly for a file
qtpong_automoc.cpp.s:
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/qtpong_automoc.cpp.s
.PHONY : qtpong_automoc.cpp.s

scoreboard.o: scoreboard.cpp.o

.PHONY : scoreboard.o

# target to build an object file
scoreboard.cpp.o:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/scoreboard.cpp.o
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/scoreboard.cpp.o
.PHONY : scoreboard.cpp.o

scoreboard.i: scoreboard.cpp.i

.PHONY : scoreboard.i

# target to preprocess a source file
scoreboard.cpp.i:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/scoreboard.cpp.i
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/scoreboard.cpp.i
.PHONY : scoreboard.cpp.i

scoreboard.s: scoreboard.cpp.s

.PHONY : scoreboard.s

# target to generate assembly for a file
scoreboard.cpp.s:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/scoreboard.cpp.s
	$(MAKE) -f CMakeFiles/qtpong.dir/build.make CMakeFiles/qtpong.dir/scoreboard.cpp.s
.PHONY : scoreboard.cpp.s

testqtpong.o: testqtpong.cpp.o

.PHONY : testqtpong.o

# target to build an object file
testqtpong.cpp.o:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/testqtpong.cpp.o
.PHONY : testqtpong.cpp.o

testqtpong.i: testqtpong.cpp.i

.PHONY : testqtpong.i

# target to preprocess a source file
testqtpong.cpp.i:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/testqtpong.cpp.i
.PHONY : testqtpong.cpp.i

testqtpong.s: testqtpong.cpp.s

.PHONY : testqtpong.s

# target to generate assembly for a file
testqtpong.cpp.s:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/testqtpong.cpp.s
.PHONY : testqtpong.cpp.s

testqtpong_automoc.o: testqtpong_automoc.cpp.o

.PHONY : testqtpong_automoc.o

# target to build an object file
testqtpong_automoc.cpp.o:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/testqtpong_automoc.cpp.o
.PHONY : testqtpong_automoc.cpp.o

testqtpong_automoc.i: testqtpong_automoc.cpp.i

.PHONY : testqtpong_automoc.i

# target to preprocess a source file
testqtpong_automoc.cpp.i:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/testqtpong_automoc.cpp.i
.PHONY : testqtpong_automoc.cpp.i

testqtpong_automoc.s: testqtpong_automoc.cpp.s

.PHONY : testqtpong_automoc.s

# target to generate assembly for a file
testqtpong_automoc.cpp.s:
	$(MAKE) -f CMakeFiles/testqtpong.dir/build.make CMakeFiles/testqtpong.dir/testqtpong_automoc.cpp.s
.PHONY : testqtpong_automoc.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... testqtpong"
	@echo "... ContinuousSubmit"
	@echo "... ContinuousCoverage"
	@echo "... ContinuousTest"
	@echo "... ContinuousBuild"
	@echo "... ContinuousMemCheck"
	@echo "... Nightly"
	@echo "... NightlyTest"
	@echo "... NightlyUpdate"
	@echo "... Continuous"
	@echo "... NightlyBuild"
	@echo "... NightlyStart"
	@echo "... NightlyMemoryCheck"
	@echo "... NightlyMemCheck"
	@echo "... ExperimentalStart"
	@echo "... ContinuousConfigure"
	@echo "... NightlyCoverage"
	@echo "... ExperimentalUpdate"
	@echo "... test"
	@echo "... ExperimentalConfigure"
	@echo "... ExperimentalCoverage"
	@echo "... ExperimentalBuild"
	@echo "... NightlyConfigure"
	@echo "... ExperimentalTest"
	@echo "... ExperimentalMemCheck"
	@echo "... qtpong"
	@echo "... Experimental"
	@echo "... NightlySubmit"
	@echo "... ExperimentalSubmit"
	@echo "... ContinuousStart"
	@echo "... ContinuousUpdate"
	@echo "... testqtpong_automoc"
	@echo "... qtpong_automoc"
	@echo "... ball.o"
	@echo "... ball.i"
	@echo "... ball.s"
	@echo "... engine.o"
	@echo "... engine.i"
	@echo "... engine.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... mainwindow.o"
	@echo "... mainwindow.i"
	@echo "... mainwindow.s"
	@echo "... paddle.o"
	@echo "... paddle.i"
	@echo "... paddle.s"
	@echo "... qtpong.o"
	@echo "... qtpong.i"
	@echo "... qtpong.s"
	@echo "... qtpong_automoc.o"
	@echo "... qtpong_automoc.i"
	@echo "... qtpong_automoc.s"
	@echo "... scoreboard.o"
	@echo "... scoreboard.i"
	@echo "... scoreboard.s"
	@echo "... testqtpong.o"
	@echo "... testqtpong.i"
	@echo "... testqtpong.s"
	@echo "... testqtpong_automoc.o"
	@echo "... testqtpong_automoc.i"
	@echo "... testqtpong_automoc.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

