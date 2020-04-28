project(cortex-m-llvm C)
cmake_minimum_required(VERSION 3.15)

# List of MCU part names which require cross-compilation. If a toolchain file
# sets CMAKE_SYSTEM_PROCESSOR to an element of this list, it can be used to
# trigger custom startup code and linker scripts. If CMAKE_SYSTEM_PROCESSOR is
# not in this list, the default of the host will be provided.
set(CROSS_COMPILE_SYSTEM_PROCESSORS STM32F107VCT6 STM32F746VGT6)

add_subdirectory(src)
