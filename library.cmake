# fprime-featherm4-freertos/library.cmake
# This is a meta-library used only to pull in submodules.
# No components or modules are defined here.

### Libraries
# Set the path to the Arduino libraries directory
set(ARDUINO_LIB_PATH "$ENV{HOME}/Arduino/libraries")
set(ARDUINO_STM32_LIB_PATH "$ENV{HOME}/.arduino15/packages/STMicroelectronics/hardware/stm32/2.12.0")

# Include directories for Arduino libraries
include_directories(
    ${ARDUINO_LIB_PATH}/Time
    ${ARDUINO_LIB_PATH}/STM32duino_FreeRTOS
    ${ARDUINO_STM32_LIB_PATH}/Wire
    ${ARDUINO_STM32_LIB_PATH}/SPI
)

#NOTE: This is corresponding to the FILE STM32FreeRTOS.h in STM32FreeRTOS (Github Repo)
#       which the Arduino library STM32duino_FreeRTOS is pointing to
#target_use_arduino_libraries("STM32FreeRTOS")
