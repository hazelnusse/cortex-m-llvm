include(${CMAKE_CURRENT_LIST_DIR}/clang-cortex-common.cmake)
set(cortex_m33_flags "--target=thumbv8m-none-eabi -mthumb -march=armv8-m.main -mcpu=cortex-m33 -mfloat-abi=hard -mfpu=fpv5-sp-d16")
set(CMAKE_C_FLAGS ${cortex_m33_flags} CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS ${cortex_m33_flags} CACHE STRING "" FORCE)
