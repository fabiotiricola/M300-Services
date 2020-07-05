# Default Shell Configuration for all Virtual Maschines

#!/bin/bash

# Updates 
sudo apt-get update
sudo apt-get upgrade -y

# Firewall
sudo apt-get install ufw
sudo ufw default deny
sudo ufw -f enable