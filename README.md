# ESP-32 Mars Rover Flasher

Windows flashing project for the Mars Rover ESP32 firmware.

## Goal
- Windows GUI launched with `FLASH.bat`
- Bundled `esptool.exe` so the operator PC does not need Python or Arduino IDE
- Select ESP32 COM port and show flashing progress
- Assign a unique Wi-Fi access point name per rover, e.g. `MARS ROVER 001` through `MARS ROVER 100`
- Persist the assigned SSID in ESP32 NVS

## Important status
This repository setup is in progress. Do not use an old firmware binary as final production firmware unless it includes SSID provisioning support. The modified firmware must be compiled and tested on an ESP32 before production use.

## Firmware build
The build computer needs Arduino CLI and the ESP32 Arduino core. The computer used to flash devices should not need Python or Arduino IDE when using the bundled Windows flasher and prebuilt firmware.

## Existing rover configuration
The existing rover sketch uses the ESP32 SoftAP password `12345678`. Preserve existing rover controls, obstacle sensor behavior, web interface, and MAX7219 matrix behavior while adding SSID provisioning.

## Safety
Flash only firmware built for the correct ESP32 target and flash layout. Verify the COM port and test on one device before programming a batch.