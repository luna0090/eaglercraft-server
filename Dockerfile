# Use lightweight Java
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the Eaglercraft server jar
COPY EaglercraftServer.jar /app/

# Expose the server port
EXPOSE 25565

# Start the server with 512MB max memory (free tier friendly)
CMD ["java", "-Xmx512M", "-jar", "EaglercraftServer.jar", "--nogui"]
