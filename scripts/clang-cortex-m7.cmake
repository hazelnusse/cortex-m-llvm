include(${CMAKE_CURRENT_LIST_DIR}/clang-cortex-common.cmake)
set(cortex_m7_flags "--target=thumbv7em-none-eabi -mthumb -march=armv7e-m -mcpu=cortex-m7 -mfloat-abi=hard -mfpu=fpv5-dp-d16")
set(CMAKE_C_FLAGS ${cortex_m7_flags} CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS ${cortex_m7_flags} CACHE STRING "" FORCE)
