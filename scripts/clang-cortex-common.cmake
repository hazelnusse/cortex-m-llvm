set(CMAKE_SYSTEM_NAME Generic)

set(CMAKE_C_COMPILER clang)
set(CMAKE_C_COMPILER_ID Clang)
set(CMAKE_C_COMPILER_FORCED TRUE)

set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_CXX_COMPILER_ID Clang)
set(CMAKE_CXX_COMPILER_FORCED TRUE)

# Note that the -L flag below is so that linker scripts can be found by the
# linker script INCLUDE command.
set(CMAKE_EXE_LINKER_FLAGS "--Bstatic --build-id --gc-sections -L ${CMAKE_CURRENT_LIST_DIR}")
set(LLVM_LD_LINK_STRING "ld.lld <LINK_FLAGS> <OBJECTS> -o <TARGET> <LINK_LIBRARIES>")
set(CMAKE_C_LINK_EXECUTABLE ${LLVM_LD_LINK_STRING})
set(CMAKE_CXX_LINK_EXECUTABLE ${LLVM_LD_LINK_STRING})
