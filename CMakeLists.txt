cmake_minimum_required(VERSION 3.18)

project(VulkanTutorial)

find_package(glfw3 REQUIRED)
find_package(glm REQUIRED)
find_package(Vulkan REQUIRED)

set(${CMAKE_PROJECT_NAME}-SRC
        main.cpp
        lib/stb/stb_image.h)

add_executable(${CMAKE_PROJECT_NAME} ${${CMAKE_PROJECT_NAME}-SRC})

set_target_properties(${CMAKE_PROJECT_NAME} PROPERTIES CXX_STANDARD 17)

target_link_libraries(${CMAKE_PROJECT_NAME} Vulkan::Vulkan glfw)