include(${CMAKE_CURRENT_LIST_DIR}/clang-cortex-common.cmake)
set(cortex_m4_flags "--target=thumbv7em-none-eabi -mthumb -march=armv7e-m -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16")
set(CMAKE_C_FLAGS ${cortex_m4_flags} CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS ${cortex_m4_flags} CACHE STRING "" FORCE)
