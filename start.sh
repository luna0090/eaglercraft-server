#!/bin/bash
# Use Render's assigned port or default
PORT=${PORT:-25565}

echo "Starting Eaglercraft server..."
java -Xmx512M -jar server.jar --port 25565 &

echo "Starting EaglerXServer proxy on port $PORT..."
java -Xmx256M -jar EaglerXServer.jar --server ws://localhost:25565 --port $PORT

# Keep the script running
wait
