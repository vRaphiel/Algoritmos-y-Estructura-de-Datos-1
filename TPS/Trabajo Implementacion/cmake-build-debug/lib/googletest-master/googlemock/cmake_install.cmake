# Install script for directory: /cygdrive/c/Users/vAsmad/CLionProjects/Algoritmos-y-Estructura-de-Datos-1/Trabajo Implementacion/lib/googletest-master/googlemock

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/cygdrive/c/Users/vAsmad/CLionProjects/Algoritmos-y-Estructura-de-Datos-1/Trabajo Implementacion/cmake-build-debug/lib/googletest-master/googlemock/libgmockd.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/cygdrive/c/Users/vAsmad/CLionProjects/Algoritmos-y-Estructura-de-Datos-1/Trabajo Implementacion/cmake-build-debug/lib/googletest-master/googlemock/libgmock_maind.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/cygdrive/c/Users/vAsmad/CLionProjects/Algoritmos-y-Estructura-de-Datos-1/Trabajo Implementacion/lib/googletest-master/googlemock/include/gmock")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES
    "/cygdrive/c/Users/vAsmad/CLionProjects/Algoritmos-y-Estructura-de-Datos-1/Trabajo Implementacion/cmake-build-debug/gmock.pc"
    "/cygdrive/c/Users/vAsmad/CLionProjects/Algoritmos-y-Estructura-de-Datos-1/Trabajo Implementacion/cmake-build-debug/gmock_main.pc"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/cygdrive/c/Users/vAsmad/CLionProjects/Algoritmos-y-Estructura-de-Datos-1/Trabajo Implementacion/cmake-build-debug/lib/googletest-master/googlemock/gtest/cmake_install.cmake")

endif()

