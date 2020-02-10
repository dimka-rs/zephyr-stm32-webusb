.PHONY: all clean flash init

all:
	west build -b stm32_min_dev_blue

clean:
	west build -t pristine

flash:
	west flash

menuconfig:
	west build -t menuconfig

guiconfig:
	west build -t guiconfig

init:
	@echo "source $(HOME)/repos/zephyrproject/zephyr/zephyr-env.sh"
