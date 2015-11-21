cmake_minimum_required(VERSION 3.2)
project(qtpong)

# Enable C++11
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -pthread")

set(CMAKE_BUILD_TYPE Debug)

# Tell cmake to run moc automatically
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)

# Add core Qt4 and Qt4Test
FIND_PACKAGE(Qt4 REQUIRED QtGui)
INCLUDE(${QT_USE_FILE})

QT4_WRAP_CPP(MOCSrcs)

set(CMAKE_INCLUDE_CURRENT_DIR ON)

include_directories(${CMAKE_CURRENT_SOURCE_DIR} ${CMAKE_CURRENT_BINARY_DIR})

ADD_EXECUTABLE(qtpong ball.cpp main.cpp mainwindow.cpp paddle.cpp qtpong.cpp ${MOCSrcs})
TARGET_LINK_LIBRARIES(qtpong Qt4::QtGui)
