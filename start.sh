#!/bin/bash
# Default port if $PORT is not set
PORT=${PORT:-25565}

echo "Starting Eaglercraft server on port $PORT"

# Start the server and bind to the port
java -Xmx512M -jar server.jar --port $PORT
