cmake_minimum_required(VERSION 3.16)
project(AI_Procedural_Generator)

set(CMAKE_CXX_STANDARD 17)

# Ensure CMAKE_BUILD_TYPE is set
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release CACHE STRING "Choose the build type" FORCE)
endif()

# Conan Integration
include(${CMAKE_BINARY_DIR}/conan_toolchain.cmake)

# Find Conan Dependencies
find_package(nlohmann_json REQUIRED CONFIG)
find_package(spdlog REQUIRED CONFIG)
find_package(GTest REQUIRED CONFIG)

# Ensure `main.cpp` is correctly linked
add_executable(generator src/main.cpp)

# Link Conan-managed dependencies
target_link_libraries(generator PRIVATE nlohmann_json::nlohmann_json spdlog::spdlog)
