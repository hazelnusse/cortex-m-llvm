include(${CMAKE_CURRENT_LIST_DIR}/clang-cortex-common.cmake)
set(cortex_m3_flags "--target=thumbv7m-none-eabi -mthumb -march=armv7m -mcpu=cortex-m3 -mfloat-abi=soft -mfpu=none")
set(CMAKE_C_FLAGS ${cortex_m3_flags} CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS ${cortex_m3_flags} CACHE STRING "" FORCE)
