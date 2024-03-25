# Change ES Systems Script

This is a special script that enables you to change the `es_systems.cfg` file, which controls the display of gaming systems in EmulationStation using your controllers. This customization allows for a more personalized gaming experience on your RetroPie setup.

## Version

- Version 4.1
- Updated by TMNTturtlguy on July 9, 2017
- Script enhancements and documentation update to include `change_es_systems` functionality.

## Setup

1. **Script Placement**: Move the script into the `/home/pi/RetroPie/retropiemenu/` directory.
2. **Directory Structure Setup**: Create the directory `/opt/retropie/configs/all/emulationstation/es_systems`.
3. **Create Subdirectories**: Inside the above directory, make these six directories: `All`, `Consoles`, `Customs`, `Favorites`, `Hacks`, `Neocapcom`.

## Configuration

Place a `es_systems.cfg` file within each of the six directories you've created. Ensure the file is named `es_systems.cfg` in every directory, although the contents (the systems configuration) can vary based on your preference.

**Example Path**: `/opt/retropie/configs/all/emulationstation/es_systems/Favorites/es_systems.cfg`

## Usage

To apply a new `es_systems.cfg` configuration, run the script from the RetroPie menu. EmulationStation will automatically restart to reflect the changes in the systems display based on the selected configuration.

The script now uses the `change_es_systems` function to streamline the process of switching between different `es_systems.cfg` files, making it easier to manage and understand for users.

## How to Use the Change Feature

After setting up your desired `es_systems.cfg` files in the respective directories, you can easily switch between them through the script's menu. The script prompts you to choose which configuration to apply (All, Consoles, Customs, Favorites, Hacks, Neocapcom), and the selected configuration will be instantly activated with EmulationStation restarting to update the display.

## Acknowledgements

A heartfelt thank you to @meleu and @cyperghost for their invaluable assistance in troubleshooting this script and devising the method to restart EmulationStation seamlessly. Their contributions have significantly enhanced the functionality and user experience of this script.
