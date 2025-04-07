cmake_minimum_required(VERSION 3.16)

# Change this to your project name
project(ModernCppTemplate VERSION 0.1.0)

# C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Ensure CMAKE_BUILD_TYPE is set
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release CACHE STRING "Choose the build type (Debug/Release)" FORCE)
endif()

# Conan Integration
include(${CMAKE_BINARY_DIR}/conan_toolchain.cmake)

# Find Conan Dependencies
# Add or remove packages as needed for your project
find_package(nlohmann_json REQUIRED CONFIG)
find_package(spdlog REQUIRED CONFIG)
find_package(GTest REQUIRED CONFIG)

# Collect all source files
# Add your source files here
set(SOURCES
    src/main.cpp
    src/components/BaseComponent.cpp
)

# Create executable
add_executable(${PROJECT_NAME} ${SOURCES})

# Include directories
target_include_directories(${PROJECT_NAME} PRIVATE 
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

# Link dependencies
target_link_libraries(${PROJECT_NAME} PRIVATE 
    nlohmann_json::nlohmann_json 
    spdlog::spdlog
)

# Optional: Install configuration
install(TARGETS ${PROJECT_NAME}
    RUNTIME DESTINATION bin
)

# Optional: Enable testing
option(BUILD_TESTING "Build the testing tree" ON)
if(BUILD_TESTING)
    enable_testing()
    # Add your test executable here
    # add_subdirectory(tests)
endif()
