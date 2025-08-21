# Use lightweight Java
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy server jar and start script
COPY server.jar /app/
COPY start.sh /app/
COPY eula.txt /app/
# Expose the default port (optional for clarity)
EXPOSE 25565

# Run the start script
CMD ["bash", "start.sh"]
