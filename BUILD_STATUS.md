# Build and upload status

Files committed so far:
- `README.md`: project goals and safety notes
- `FLASH.bat`: launches `MarsRoverFlasher.ps1` using Windows PowerShell

Still to be committed before this repository is a usable flasher:
- `MarsRoverFlasher.ps1` GUI script
- `esptool.exe` bundled binary
- modified `.ino` firmware with Preferences/NVS SSID persistence and serial `SETSSID:` provisioning
- `pixelcar.h`
- compiled merged firmware binary built from the modified source

Do not treat the current repository as a complete release yet. The old firmware binary does not include SSID provisioning and must not be flashed as if it did. The final build must be tested on a physical ESP32 before production use.