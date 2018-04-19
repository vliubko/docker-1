FROM debian

RUN apt-get update -y && \
 apt-get upgrade -y && \
 apt-get install -y sudo curl openjdk-8-jre screen vim wget

RUN sudo wget https://s3.amazonaws.com/Minecraft.Download/versions/1.10.2/minecraft_server.1.10.2.jar

RUN echo "eula=true" > eula.txt
RUN sudo java -jar minecraft_server.1.10.2.jar
