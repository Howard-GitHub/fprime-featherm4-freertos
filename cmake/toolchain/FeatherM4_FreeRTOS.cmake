####
# FeatherM4_FreeRTOS.cmake:
#
#
####
set(CMAKE_CXX_STANDARD 17)
add_compile_options(-std=c++17 -std=gnu++17)
set(CMAKE_SYSTEM_NAME "Generic")
set(CMAKE_SYSTEM_PROCESSOR "arm")
set(CMAKE_CROSSCOMPILING 1)
set(FPRIME_PLATFORM "FeatherM4_FreeRTOS")
set(FPRIME_USE_BAREMETAL_SCHEDULER OFF)
set(ARDUINO_BUILD_PROPERTIES)

set(CMAKE_C_COMPILER_WORKS 1)
set(CMAKE_CXX_COMPILER_WORKS 1)


# START: Changed from Adafruiit Feather M4 To STM32H723ZG
set(ARDUINO_FQBN "STMicroelectronics:stm32:Nucleo_144:pnum=NUCLEO_H723ZG,upload_method=swdMethod")
add_compile_options(-D_BOARD_NUCLEO_H723ZG  -DUSE_BASIC_TIMER)
# END
# Run the base arduino setup which should detect settings!
set(ARDUINO_SUPPORT_DIR "${CMAKE_CURRENT_LIST_DIR}/../../fprime-arduino/cmake/toolchain/support")
include("${ARDUINO_SUPPORT_DIR}/arduino-support.cmake")