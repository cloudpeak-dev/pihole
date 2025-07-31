# !/bin/bash
echo "Pulling latest changes from the repository..."
git pull origin main

echo "Reloading docker container..."
sudo docker compose -f ./docker-compose.yaml up -d

echo "Setting correct log owner..."

# Set the group of the file/directory to adm.
# This allows alloy to access the logs.
sudo chgrp -R adm /var/log/pihole
# Set directory permissions
sudo chmod 750 /var/log/pihole
sudo chmod 640 /var/log/pihole/*.log