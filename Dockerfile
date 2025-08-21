FROM openjdk:17-jdk-slim

WORKDIR /app

COPY server.jar /app/
COPY EaglerXServer.jar /app/
COPY start.sh /app/
COPY eula.txt /app/

EXPOSE 25565

CMD ["bash", "start.sh"]
