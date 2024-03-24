change_es_systems
This script lets you change the es_systems.cfg file used to display systems using your controllers.

# Change ES Systems Script

This is a special script that lets you change the `es_systems.cfg` file used to display systems in EmulationStation using your controllers.

## Version
This is version 4 of the script, updated by TMNTturtlguy on July 9, 2017.

## Setup
1. Place the script in the `/home/pi/RetroPie/retropiemenu/` directory.
2. Create the following directory: `/opt/retropie/configs/all/emulationstation/es_systems`
3. Within that directory, create these six directories: `All`, `Consoles`, `Customs`, `Favorites`, `Hacks`, `Neocapcom`

## Configuration
In each of the six directories you created, place a `es_systems.cfg` file. The file needs to have the same name (`es_systems.cfg`) in each directory, but the systems can be different.

For example, the full path to the `es_systems.cfg` file in the `Favorites` directory would be: `/opt/retropie/configs/all/emulationstation/es_systems/Favorites/es_systems.cfg`

## Usage
Once everything is set up, you can run the script. EmulationStation will automatically restart to apply the new configuration.

## Acknowledgements
Special thanks to @meleu and @cyperghost for their hard work helping troubleshoot this script and coming up with a way to restart EmulationStation.

 
