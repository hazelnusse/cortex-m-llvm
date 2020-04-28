include(${CMAKE_CURRENT_LIST_DIR}/clang-cortex-common.cmake)
set(cortex_m0plus_flags "--target=thumbv6m-none-eabi -mthumb -march=armv6m -mcpu=cortex-m0plus -mfloat-abi=soft -mfpu=none")
set(CMAKE_C_FLAGS ${cortex_m0plus_flags} CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS ${cortex_m0plus_flags} CACHE STRING "" FORCE)
