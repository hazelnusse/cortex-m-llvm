
#list(FIND ${CROSS_COMPILE_SYSTEM_PROCESSORS} ${CMAKE_SYSTEM_PROCESSOR} ${CROSS_COMPILE_INDEX})
#message("CROSS_COMPILE_INDEX = ${CROSS_COMPILE_INDEX}")
#set(poop "poop")
#list(FIND ${CROSS_COMPILE_SYSTEM_PROCESSORS} ${poop} CROSS_COMPILE_INDEX)
#message("CROSS_COMPILE_INDEX = ${CROSS_COMPILE_INDEX}")

set(SOURCES main.c)
if (CMAKE_SYSTEM_PROCESSOR IN_LIST CROSS_COMPILE_SYSTEM_PROCESSORS)
    message("Cross-compiling for ${CMAKE_SYSTEM_PROCESSOR}")
    list(APPEND SOURCES start.c)
endif()
add_executable(llvm-project ${SOURCES})

# The following linker scripts depend on the memory layout of the target
# processor. The linker script is only needed when compiling for a non-host
# (i.e. cortex-m*) target. Probably we should create an option (or separate
# toolchain files) that correctly selects the right linker script, as different
# MCUs have different memory layouts.
# Ideally we wouldn't have to repeat this if condition.
if (CMAKE_SYSTEM_PROCESSOR IN_LIST CROSS_COMPILE_SYSTEM_PROCESSORS)
    target_link_options(llvm-project PRIVATE "--script=${LINKER_SCRIPT}")
    set_target_properties(llvm-project PROPERTIES LINK_DEPENDS ${LINKER_SCRIPT})
endif()
