cmake_minimum_required(VERSION 3.13)
project(salsa CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_BUILD_TYPE Debug)

add_executable(salsa main.cpp)

target_sources(salsa PUBLIC
    convLogic.cpp
    convTextMisc.cpp
    convTextScript.cpp
    salsa.hpp
    salsaBinary.hpp
    salsaContainer.hpp
    salsaLogic.cpp
    salsaLogic.hpp
    salsaLogicMaps.cpp
    salsaLogicScript.hpp
    salsaText.cpp
    salsaText.hpp
    salsaTextDynamic.cpp
    salsaTextFixed.cpp
    salsaTextMap.cpp
)
