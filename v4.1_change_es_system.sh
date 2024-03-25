#!/bin/bash
# This script allows you to change the configuration file used by EmulationStation to display different gaming systems.

# Show a warning message before proceeding
dialog --backtitle "WARNING!" --title "WARNING!" \
    --yesno "\nThis script lets you change your es_systems.cfg file used to display systems. This will not change or remove any systems or content, it will only change which systems are displayed based on user-created es_systems.cfg files. ES will automatically restart.\n\nDo you want to proceed?" \
    15 75 || exit

# Function to restart EmulationStation
restart_es() {
    # Create a temporary file to signal EmulationStation to restart
    touch /tmp/es-restart
    # Find and kill the EmulationStation process to force a restart
    pkill -f "/opt/retropie/supplementary/.*/emulationstation([^.]|$)"
    # Exit the script
    exit
}

# Function to change the ES systems configuration
change_es_systems_config() {
    # Get the type of configuration to change (e.g., All, Consoles, Favorites)
    local config_type="$1"
    # Construct the full path to the selected configuration file
    local config_path="/opt/retropie/configs/all/emulationstation/es_systems/$config_type/es_systems.cfg"

    # Check if the selected configuration file exists
    if [ -f "$config_path" ]; then
        # Remove the current ES systems configuration file
        rm -f /opt/retropie/configs/all/emulationstation/es_systems.cfg
        # Copy the selected configuration file to the ES systems folder
        cp "$config_path" /opt/retropie/configs/all/emulationstation/
        # Restart EmulationStation to apply the changes
        restart_es
    else
        # Display a message if the selected configuration file doesn't exist
        dialog --msgbox "The configuration for $config_type does not exist." 6 40
    fi
}

# Function to display the main menu
main_menu() {
    local choice

    # Show the main menu and handle user choices
    while true; do
        choice=$(dialog --backtitle "Main Menu" --title " MAIN MENU " \
            --ok-label "Select" --cancel-label "Exit" \
            --menu "Choose the ES systems configuration to apply:" 17 75 10 \
            "All" "Change to es_systems ALL and restart ES" \
            "Consoles" "Change to es_systems Consoles and restart ES" \
            "Customs" "Change to es_systems Customs and restart ES" \
            "Favorites" "Change to es_systems Favorites and restart ES" \
            "Hacks" "Change to es_systems Hacks and restart ES" \
            "Neocapcom" "Change to es_systems NeoGeo Capcom and restart ES" \
            3>&1 1>&2 2>&3)

        case "$choice" in
            "") break ;; # Exit the loop if the user cancels or exits
            *) change_es_systems_config "$choice" ;; # Change the ES systems configuration based on the user's choice
        esac
    done
}

# Start the main menu
main_menu
