# !/bin/bash
echo "Pulling latest changes from the repository..."
git pull origin main

echo "Reloading docker container..."
sudo docker compose -f ./docker-compose.yaml up -d