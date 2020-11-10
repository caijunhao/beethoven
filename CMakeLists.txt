cmake_minimum_required (VERSION 3.2)
project (Beethoven)

cmake_policy(SET CMP0072 NEW)
cmake_policy(SET CMP0076 NEW)

find_package(OpenGL REQUIRED)

# compile external dependencies
add_subdirectory(external)

include_directories(
        external/glfw/include
        external/glad/include
        external/assimp/include
        external/glm
        external/stb
        include
        .
)

set(ALL_LIBS
        ${OPENGL_LIBRARY}
        glfw
        assimp
        )

add_executable(test src/test.cpp external/glad/src/glad.c)
target_link_libraries(test ${ALL_LIBS})

