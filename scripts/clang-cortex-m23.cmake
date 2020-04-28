include(${CMAKE_CURRENT_LIST_DIR}/clang-cortex-common.cmake)
set(cortex_m23_flags "--target=thumbv8m-none-eabi -mthumb -march=armv8-m.base -mcpu=cortex-m23 -mfloat-abi=soft -mfpu=none")
set(CMAKE_C_FLAGS ${cortex_m23_flags} CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS ${cortex_m23_flags} CACHE STRING "" FORCE)
